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
    @game = $game
    erb(:play)
  end

post '/crust' do
    @game = $game
    @game.bread_pitt(@game.other_player)
    erb(:crust)
  end

  run! if app_file == $0
end
