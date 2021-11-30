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
    erb :play
  end

  post '/names' do
    session[:names] = params
    redirect '/play'
  end

  run! if app_file == $0
end