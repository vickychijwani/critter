module Helpers
  def route
    request.path_info
  end

  def logged_in?
    return true if session and session[:screen_name]
    return false
  end

  def user
    User.first(:screen_name => session[:screen_name])
  end

  def partial(page, options = {})
    haml :"partials/#{page}", :layout => false, :locals => { :locals => options }
  end

  def valid_formats_str
    [ "CSV", "JSON", "XML", "YAML" ]
  end

  def valid_formats_sym
    valid_formats_str.map { |f| f.downcase.to_sym }
  end

  def index_tweets
    if session[:indexing] == :not_started
      session[:indexing] = :ongoing
      (1..16).each do |page|
        puts page
        already_added = false
        begin
          tweets = Twitter.user_timeline(session[:screen_name], :page => page,
                                         :trim_user => true, :count => 200)
          tweets.each { |t| already_added ||= Tweet.add(t, user) }
        rescue
          puts "error occurred - retrying ..."
          retry
        end
        break if already_added
      end
      session[:indexing] = :done
      return { :status => :just_finished }
    elsif session[:indexing] == :ongoing
      return { :status => :ongoing }
    else
      return { :status => :already_indexed }
    end
  end

  def search_tweets(tweets, query, type)
    case type
    when :substring
      tweets.all(:order => [:created_at.desc]).find_all do |t|
        t.text.downcase =~ /#{query.downcase}/
      end
    when :date
      date_start, date_end = query.split(" to ").map { |s| s = s+"T00:00:00+00:00" }
      date_start, date_end = DateTime.parse(date_start), DateTime.parse(date_end)
      tweets.all(:created_at.gt => date_start, :order => [ :created_at.desc ]) &
        tweets.all(:created_at.lt => date_end, :order => [ :created_at.desc ])
    when :retweet
      tweets.all(:retweets.gt => query.to_i, :order => [ :created_at.desc ])
    # when :reply
    #   tweets.all(:in_reply_to_screen_name => query, :order => [ :created_at.desc ])
    end
  end

  def dump_tweets(tweets, format)
    valid_formats = valid_formats_sym
    method = "to_#{format}"
    if valid_formats_sym.include? format and tweets.respond_to?(method)
      name = "tweets_#{user.screen_name}.#{format}"
      path = "downloads/#{name}"
      f = open(path, 'w')
      f.write(tweets.send(method))
      f.close
      return name
    end
    return nil
  end

  def gchart_tweets_by_hour
    tweets_by_hour = user.group_tweets_by_hour.map(&:last)
    max = (tweets_by_hour.max / 10 + 1) * 10
    Gchart.bar(:size => '600x300',
               :axis_with_labels => ['x', 'y'],
               :data => tweets_by_hour,
               :bar_width_and_spacing => '17,6',
               :axis_range => [[0, 24, 1], [0, max, 10]],
               :max_value => max,
               :theme => :pastel,
               :bg => 'f9f9f9')
  end

end
