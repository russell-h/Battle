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
    $player_1 = PLayer.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end
  
get '/play' do 
  @player_1_name = $player_1
  @player_2_name = $player2
  erb :play
end

get '/attack' do
  @player_1_name = $player_1
  @player_2_name = $player_2
  erb :attack
end
  


 

end

