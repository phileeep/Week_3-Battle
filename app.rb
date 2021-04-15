require 'sinatra'
require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    "Testing infrastructure working!"
    @p1_name = params[:p1_name]
    @p2_name = params[:p2_name]
    erb :index
  end

  post '/names' do
    @p1_name = params[:p1_name]
    @p2_name = params[:p2_name]
    erb :play
  end

  run! if app_file == $0
end
