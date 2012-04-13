class Critter < Sinatra::Application
  before do
    route = request.path_info
    unprotected = ['/', '/oauth', '/auth']
    unless unprotected.include? route or logged_in?
      redirect '/', :error => "You must login to proceed."
    end
  end

  get '/oauth' do
    callback_url = 'http://' + request.env["HTTP_HOST"] + '/auth'
    request_token = settings.oauth.get_request_token(:oauth_callback => callback_url)

    session[:request_token] = request_token.token
    session[:request_token_secret] = request_token.secret

    settings.oauth.options[:authorize_path] = '/oauth/authenticate'

    redirect request_token.authorize_url
  end

  get '/auth' do
    request_token = OAuth::RequestToken.new(settings.oauth, session[:request_token],
                                            session[:request_token_secret])
    access_token = request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])
    response = settings.oauth.request(:get, '/account/verify_credentials.json',
                                      access_token, :scheme => :query_string)
    user = JSON.parse(response.body)

    Twitter.configure do |config|
      config.oauth_token = access_token.token
      config.oauth_token_secret = access_token.secret
    end

    session[:screen_name] = user["screen_name"]
    session[:indexing] = :not_started

    User.add_or_update(user, access_token)

    redirect '/home'
  end

  get '/logout' do
    session.clear
    redirect '/', :notice => "Successfully logged out."
  end
end
