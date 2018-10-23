require 'sinatra'

# get '/hello' do
#   '<h1>Hello world! </h1>'
# end

# get '/bonjour' do
#   '<h1>Bonjour, monde !</h1>'
# end

# name = "bar"

# get '/hello/:name' do
#   # matches "GET /hello/foo" and "GET /hello/bar"
#   # params['name'] is 'foo' or 'bar'
#   "Hello #{params['name']}!"
# end

 get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end