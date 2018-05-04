class Game
  attr_reader :player_1, :player_2, :current_player, :other_player

  def self.game_start(player_1, player_2)
    @game = self.new(player_1, player_2)
  end

  def self.game
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @other_player = player_2
  end

  def bread_pitt(player)
    player.reduce_health
    swiss_roll
  end

  def swiss_roll
    @current_player, @other_player = @other_player, @current_player
  end

  def win?
    @current_player.health == 0
  end
end
