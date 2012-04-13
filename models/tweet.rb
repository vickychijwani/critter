require 'rubygems'
require 'dm-core'
require 'dm-migrations'
require 'set'
require_relative 'user'

class Tweet
  include DataMapper::Resource

  property :id,         String,         :required => true,      :length => 20, :index => true, :key => true
  property :created_at, DateTime,       :required => true
  property :text,       String,         :required => true,      :length => 140
  property :retweets,   Integer,        :required => true

  belongs_to :user, :required => true

  def self.add(tweet, user)
    tweet_params = {
      :id         => tweet.id,
      :created_at => tweet.created_at,
      :text       => tweet.text,
      :retweets   => tweet.retweet_count,
      :user       => user
    }
    tweet = Tweet.get(tweet_params[:id])
    if tweet.nil?
      tweet = Tweet.create(tweet_params)
      Hashtag.add(tweet)
      Mention.add(tweet)
      return false
    else
      return true
    end
  end

  def auto_link
    Twitter::Autolink.auto_link(self.text)
  end
end
