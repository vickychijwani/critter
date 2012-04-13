require 'rubygems'

$KCODE='u' # for twitter-text gem
require 'bundler/setup'
Bundler.require(:default, :development)

require 'net/http'
require 'open-uri'

class Critter < Sinatra::Application
  enable :sessions
  use Rack::MethodOverride

  configure do
    consumer_key = '9A3ovp9fafYGrRveKsDrmw'
    consumer_secret = 'uNPqDbxvbPskHUtzuEJUkGXy3ENCI87xWDLvw6uJc'
    set :oauth, OAuth::Consumer.new(consumer_key, consumer_secret, :site => "http://twitter.com",
                                    :proxy => ENV["http_proxy"])

    Twitter.configure do |config|
      config.consumer_key = consumer_key
      config.consumer_secret = consumer_secret
      config.proxy = ENV["http_proxy"]
    end
  end

end

require_relative 'models/init'
require_relative 'routes/init'
require_relative 'helpers/init'
