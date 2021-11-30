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

  post '/names' do
    session['names'] = params
    p session
    erb :play
  end

  run! if app_file ==$0
end