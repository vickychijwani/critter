#Sinatra Extension: redirect with flash

Shortly: sinatra-redirect-with-flash provides `redirect` helper that can
set proper flash (rack-flash or sinatra-flash) before the redirection.

In fact, every time you set a flash parameter the very next step is often to
perform your redirect:

    post '/posts/?' do
      @post = Post.create(params)
      flash[:notice] = 'The post was successfully created'
      redirect "/posts/#{@post.id}"
    end

With sinatra-redirect-with-flash you can do one-line redirects. For instance,
to rewrite the above example:

    post '/posts/?' do
      @post = Post.create(params)
      redirect "/posts/#{@post.id}", :notice => 'The post was successfully created'
    end


##Installation

If you use [bundler](http://gembundler.com/), simply specify
`sinatra-redirect-with-flash` as a dependency in a Gemfile
in your project's root:

    gem 'sinatra-flash' # or `gem 'rack-flash'`
    gem 'sinatra-redirect-with-flash'

and run `bundle install`.


Otherwise install the gem as usual:

    [sudo] gem install sinatra-redirect-with-flash



##Example

    require 'rubygems'
    require 'sinatra'
    require 'sinatra/flash' # or `require 'rack-flash'`
    require 'sinatra/redirect_with_flash'

    enable :sessions

    post '/sessions/new' do
      redirect '/secret', :notice => 'Logged in'
      # predefined keys are: :notice, :error, :warning, :alert, :info, :success
    end

    get '/foo' do
      redirect '/bar', 301, :notice => 'redirect with 301 code'
    end

    get '/archive' do
      redirect '/posts/', :flash => {:my_msg => 'Moving on!'}      
    end

*Note* that if your application subclasses `Sinatra::Base` (modular app),
you have to register the extension in your subclass:

    helpers Sinatra::RedirectWithFlash


##Requirements

Either [rack-flash](http://nakajima.github.com/rack-flash/) or
[sinatra-flash](https://github.com/SFEley/sinatra-flash).
