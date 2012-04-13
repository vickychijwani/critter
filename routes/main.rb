class Critter < Sinatra::Application
  get '/' do
    redirect '/home' if logged_in?
    haml :login
  end

  get '/home' do
    haml :home
  end

  get '/ajax/index_tweets' do
    return index_tweets.to_json
  end
end
