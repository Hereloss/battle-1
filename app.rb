require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @names = session[:names]
    @player_1_hp = 100
    @player_2_hp = 100
    erb :play
  end

  get '/attack' do
    'Player 2 was attacked!'
  end

  post '/names' do
    session[:names] = params
    redirect '/play'
  end


  run! if app_file == $0
end