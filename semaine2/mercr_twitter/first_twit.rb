 # ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'
require 'dotenv'

Dotenv.load
#quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token        = ENV['TWITTER_TOKEN']
  config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
end



# puts client.friends("Clem_bdy")

 count = 0

client.followers("sgtpembry").each do |follower|
  if count < 10
    puts follower.name
    count += 1
  else
    exit
  end
end


# # #p client


# ligne qui permet de tweeter
#client.update('Hidden Key !!')
# client.follow("LpLea1")
#follow qqun : 
#client.directmessage("Clem_bdy")