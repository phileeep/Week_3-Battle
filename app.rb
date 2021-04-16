require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    $p1name = Player.new(params[:p1_name])
    $p2name = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @p1_name = $p1name.name
    @p2_name = $p2name.name
    @p1_hp = 100
    @p2_hp = 100
    erb :play
  end

  get '/attack' do 
    @p1_name = $p1name.name
    @p2_name = $p2name.name
    @p1_hp = 100
    @p2_hp = 90
    erb :attack
  end

  run! if app_file == $0
end

# $p1name = Player.new(params[:p1_name])
# $p2name = Player.new(params[:p2_name])