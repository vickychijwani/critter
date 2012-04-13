require 'rubygems'
require 'dm-core'
require 'dm-migrations'
require_relative 'tweet'

class User
  include DataMapper::Resource

  property :id,                  Integer,        :required => true, :index => true, :key => true
  property :screen_name,         String,         :required => true, :length => 15, :index => true
  property :access_token,        String,         :required => true, :length => 200
  property :access_token_secret, String,         :required => true, :length => 200
  property :name,                String,         :required => true, :length => 20
  property :description,         Text,           :required => false, :length => 160
  property :profile_image_url,   Text,           :required => true, :length => 1000
  property :statuses_count,      Integer,        :required => true, :default => 0

  has n, :tweets

  def self.add_or_update(params, access_token)
    user_params = {
      :id                  => params["id"],
      :screen_name         => params["screen_name"],
      :access_token        => access_token.token,
      :access_token_secret => access_token.secret,
      :name                => params["name"],
      :description         => params["description"],
      :profile_image_url   => params["profile_image_url"]
    }
    user = User.get(user_params[:id])
    if user.nil?
      user = User.create(user_params)
    else
      user.update(user_params)
    end
  end

  def tweets_per_day
    first = self.tweets(:order => [:created_at.desc]).first
    last = self.tweets(:order => [:created_at.desc]).last
    if first and last
      diff = first.created_at - last.created_at
      tweets_total = self.tweets.length
      return tweets_total / diff.to_f
    else
      return 0;
    end
  end

  def group_tweets_by_hour
    self.tweets.map { |t| t.created_at.hour }.group_by(&:to_i).map{ |k, v| [k, v.length] }.sort
  end

  def popular_tweets(limit)
    self.tweets(:order => [:retweets.desc], :limit => limit || 1, :retweets.gt => 0)
  end
end
