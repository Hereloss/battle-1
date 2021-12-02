require "sinatra/base"
require "sinatra/reloader"
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    @player_1_hp = 100
    @player_2_hp = 100
    erb :play
  end

  get '/attack' do
    'Player 2 was attacked!'
  end

  post '/names' do
    $player_1 = Player.new(params["name1"])
    $player_2 = Player.new(params["name2"])
    redirect '/play'
  end


  run! if app_file == $0
end