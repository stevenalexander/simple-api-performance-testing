require 'sinatra'
require 'json'

get '/' do
  content_type :json
  { :datetime => DateTime.now.to_s }.to_json
end