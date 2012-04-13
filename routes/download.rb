class Critter < Sinatra::Application
  get '/download' do
    @all = false
    if params and params[:query]
      redirect route if params[:query] == ""
      @query = params[:query]
      @type = params[:type].to_sym
      @tweets = search_tweets(user.tweets, @query, @type)
    else
      @tweets = user.tweets(:order => [:created_at.desc])
      @all = true
    end
    if params and params[:format]
      limit = params[:limit].to_i
      limit = @tweets.length if limit > @tweets.length
      redirect route if limit == 0
      format = params[:format].to_sym
      name = dump_tweets(@tweets[0...limit], format)
      send_file("downloads/#{name}", :filename => name) if name
      `rm #{path}`
    else
      haml :download
    end
  end
end
