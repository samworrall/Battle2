require 'sinatra/base'
require './lib/alastair.rb'
require './lib/game.rb'
class Battle < Sinatra::Base
  before do
    @game = Game.game
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.game_start(Alastair.new(params[:player_1_name]), Alastair.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/crust' do
    @game.bread_pitt(@game.other_player)
    if @game.win?
      erb(:winner)
    elsif @game.current_player.name == "AI"
      @game.bread_pitt(@game.other_player)
      @game.win? ? erb(:winner) : erb(:crust2)
    else
      erb(:crust)
    end


  end

  run! if app_file == $0

end
