require 'twitter'
require 'dotenv'

Dotenv.load

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token        = ENV['TWITTER_TOKEN']
  config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
end

# client.sample do |object|
#   puts object.text if object.is_a?(Twitter::Tweet)
# end
topics = ["fuck"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end