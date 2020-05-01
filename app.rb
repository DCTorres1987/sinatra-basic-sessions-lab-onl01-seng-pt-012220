require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do 
    @item = params["item"]
    @session = session
    binding.pry
    erb :checkout
  end
  
end