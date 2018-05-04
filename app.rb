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
    redirect '/crust2' if @game.current_player.name == "AI"
    erb(:play)

  end

  post '/crust' do
    @game.bread_pitt(@game.other_player)
     erb(:winner) if @game.win?
  end

  get '/crust2' do
    @game.bread_pitt(@game.other_player)
    erb(:winner) if @game.win?
    redirect('/play')

  end



  run! if app_file == $0

end
