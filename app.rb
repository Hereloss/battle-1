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
    erb :play
  end

  get '/attack' do
    $game.play
    erb :attack
  end

  post '/names' do
    $game.player_1.change_name(params["name1"])
    $game.player_2.change_name(params["name2"])
    redirect '/play'
  end


  run! if app_file == $0
end