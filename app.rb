require 'sinatra/base'
require 'sinatra/reloader'
require 'Player'

class Battle < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader 
  end
  enable :sessions

  # get '/' do
  #   'Hello Battle!'
  # end

  # get '/' do
  #   'Testing infrastructure working!'
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0


  get '/' do
    erb :index
  end

  

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end
  
get '/play' do 
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb :play
end

get '/attack' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb :attack
end
  


 

end

