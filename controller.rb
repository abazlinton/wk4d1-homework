require 'sinatra'
require 'sinatra/contrib/all'
require "sinatra/reloader"
require 'pry-byebug'
require_relative './models/word_formatter'
require 'json'

configure { set :server, :webrick }



get '/' do
  erb(:home)

end

get '/address' do
  content_type('json')

  address = {
        address: '3 ARGYLE HOUSE',
        building: 'CODEBASE',
        postcode: 'e13 zqf',
        phone: '0131558030'
    }

  fixed_postcode = WordFormatter.upcase(address[:postcode]) 
  address[:postcode] = fixed_postcode
  return address.to_json
  
end

get '/camel_case/:text' do

  @text = params[:text]
  @text = WordFormatter.camel_case(@text)
  erb(:camel)
  
end