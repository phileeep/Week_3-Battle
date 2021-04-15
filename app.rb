require 'sinatra'
require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end

  get '/names' do
    @name = params[:name]
    erb :index
  end

  post '/play' do
    erb :play
  end

  run! if app_file == $0
end
