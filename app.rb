require 'sinatra/base'
require './lib/alastair.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Alastair.new(params[:player_1_name])
    $player_2 = Alastair.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_points = $player_1.health
    @player_2_points = $player_2.health
    erb(:play)
  end

post '/crust' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_points = $player_1.reduce_health
    @player_2_points = $player_2.reduce_health
    erb(:crust)
  end

  run! if app_file == $0
end
