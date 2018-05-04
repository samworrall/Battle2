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
    attack_sequence
  end

  run! if app_file == $0

  private

  def run_attack
    @game.bread_pitt(@game.other_player)
  end

  def attack_sequence
    run_attack
    if @game.win?
      erb(:winner)
    elsif @game.current_player.name == "AI"
      run_attack
      @game.win? ? erb(:winner) : erb(:crust2)
    else
      erb(:crust)
    end
  end

end
