#gem dotenv
require 'dotenv'

Dotenv.load

puts ENV['TWITTER_API_SECRET']