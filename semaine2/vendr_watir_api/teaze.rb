require 'httparty'

teer = HTTParty.get("http://google.com")

# puts teer.headers
puts teer.body
# puts teer.headers["date"]
