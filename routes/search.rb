class Critter < Sinatra::Application
  get '/search' do
    if params and params[:query]
      redirect route if params[:query] == ""
      @query = params[:query]
      @type = params[:type].to_sym
      @tweets = search_tweets(user.tweets, @query, @type)
      @heading = "Search Results"
    else
      @tweets = user.tweets(:limit => 20, :order => [:created_at.desc])
      @heading = "Recent Tweets"
    end
    haml :search
  end
end
