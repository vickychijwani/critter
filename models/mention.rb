require 'rubygems'
require 'dm-core'
require 'dm-migrations'
require_relative 'user'

class Mention
  include DataMapper::Resource

  property :id,      Serial
  property :text,    String,         :required => true,      :length => 100, :index => true
  property :count,   Integer,        :required => true,      :default => 0

  belongs_to :user, :required => true

  def self.add(tweet)
    mentions = Twitter::Extractor.extract_mentioned_screen_names(tweet.text)
    puts mentions
    mentions.each do |m|
      mention = Mention.first_or_create(:text => m, :user => tweet.user)
      mention.update(:count => mention.count + 1)
    end
  end

end
