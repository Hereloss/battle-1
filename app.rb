require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::base
  configure :development do
    register Sinatra::Reloader
  end

  run! if app_file ==$0
end