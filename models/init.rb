require_relative 'tweet'
require_relative 'user'
require_relative 'hashtag'
require_relative 'mention'

DataMapper::setup(:default, (ENV["DATABASE_URL"] || "sqlite3://#{Dir.pwd}/app.db"))
Tweet.auto_migrate! unless Tweet.storage_exists?
User.auto_migrate! unless User.storage_exists?
Hashtag.auto_migrate! unless Hashtag.storage_exists?
Mention.auto_migrate! unless Mention.storage_exists?
