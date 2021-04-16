require 'sinatra'
require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    redirect '/play'
  end

  get '/play' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    @p1_hp = "100HP"
    @p2_hp = "100HP"
    erb :play
  end

  get '/attack' do 
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    @p1_hp = "100HP"
    @p2_hp = "90 HP"
    erb :attack
  end

  run! if app_file == $0
end
