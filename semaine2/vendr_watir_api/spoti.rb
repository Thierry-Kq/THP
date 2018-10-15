require 'dotenv'
require 'httparty'

Dotenv.load

def encoding(client_id,client_secret)
  client_id_secret = "#{client_id}:#{client_secret}"
  encoded_client_id_secret = "Basic #{Base64.encode64(client_id_secret)}".delete("\n")
  return encoded_client_id_secret

end

def post_token
  client_id = ENV["SPOTI_CLIENT_ID"]
  client_secret = ENV["SPOTI_CLIENT_SECRET"]

  token = HTTParty.post(
  'https://accounts.spotify.com/api/token', 
  headers: {Authorization: encoding(client_id,client_secret)}, 
  body: {grant_type: 'client_credentials'}
  )
  return token
end

def get_latest_release
  my_access_token = post_token["access_token"]
  headers = {
      "Content-Type" => 'application/json',
      "Accept" => 'application/json',
      "Authorization" => "Bearer #{my_access_token}"
    } 

  
  puts HTTParty.get(
    'https://api.spotify.com/v1/artists/{3a5f181bbfa74b71a0c3a426d9bc9f73}/top-tracks',
    headers: headers)
end

get_latest_release