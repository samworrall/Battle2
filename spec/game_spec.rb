require 'game'

describe Game, :game do
  let(:game) { Game.new(player_1, player_2) }
  let(:game2) { Game.new(injured_player_1, player_2) }
  let(:player_1) { double :player_1, health: 90, reduce_health: nil }
  let(:player_2) { double :player_2, health: 90, reduce_health: nil }
  let(:injured_player_1) { double :injured_player_1, health: 0, reduce_health: nil }

  it 'initializes with two players' do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  describe '#bread_pitt' do
    it 'Reduces pitta points by 10' do
      game.bread_pitt(player_1)
      expect(game.player_1.health).to eq 90
    end
  end

  describe '#swiss_roll' do
    it 'Swaps the current player' do
      game.bread_pitt(player_1)
      expect(game.current_player).to eq player_2
    end
  end

  describe '#win' do
    it 'Tests if either player has won' do
      expect(game2.win?).to eq(true)
    end
  end
end
