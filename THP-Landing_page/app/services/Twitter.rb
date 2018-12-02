class Twitter

	def initialize

      client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_API_KEY"]
      config.consumer_secret     = ENV["TWITTER_API_SECRET"]
      config.access_token        = ENV["access_token"]
      config.access_token_secret = ENV["token_secret"]
    end
  end

end