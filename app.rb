require "sinatra/base"
require "sinatra/reloader"
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  $game = Game.new

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    @player_1_hp = $player_1.hitpoints
    @player_2_hp = $player_2.hitpoints
    erb :play
  end

  get '/attack' do
    @player_name_1 = $player_1.name
    @player_name_2 = $player_2.name
    @player_1_hp = $player_1.hitpoints
    @player_2_hp = $player_2.hitpoints
    $game.attack($player_2)
    erb :attack
  end

  post '/names' do
    $player_1 = Player.new(params["name1"])
    $player_2 = Player.new(params["name2"])
    redirect '/play'
  end


  run! if app_file == $0
end