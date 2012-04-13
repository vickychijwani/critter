require 'rubygems'
require 'dm-core'
require 'dm-migrations'
require_relative 'user'

class Hashtag
  include DataMapper::Resource

  property :id,      Serial
  property :text,    String,         :required => true,      :length => 100, :index => true
  property :count,   Integer,        :required => true,      :default => 0

  belongs_to :user, :required => true

  def self.add(tweet)
    hashtags = Twitter::Extractor.extract_hashtags(tweet.text)
    hashtags.each do |h|
      hashtag = Hashtag.first_or_create(:text => h, :user => tweet.user)
      hashtag.update(:count => hashtag.count + 1)
    end
  end

end
