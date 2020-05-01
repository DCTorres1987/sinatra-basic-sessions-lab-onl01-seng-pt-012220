require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do 
    @item = params["item"]
      enable :sessions
    @session = session
    set :session_secret, "secret"
    erb :checkout
  end
  
end