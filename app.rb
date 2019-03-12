require 'json'
require 'sinatra'
require 'sinatra/activerecord'
  
require './config/database'
  
class App < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  # Load Models
Dir["./app/models/*.rb"].each {|file| require file }

end