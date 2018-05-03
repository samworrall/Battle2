require 'sinatra/base'
require './lib/alastair.rb'
require './lib/game.rb'
class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Alastair.new(params[:player_1_name]), Alastair.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_points = $game.player_1.health
    @player_2_points = $game.player_2.health
    erb(:play)
  end

post '/crust' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name

    @current_player = $game.current_player
    @other_player = $game.other_player
    
    $game.bread_pitt(@other_player)
    @player_1_points = $game.player_1.health
    @player_2_points = $game.player_2.health
    erb(:crust)
  end

  run! if app_file == $0
end
