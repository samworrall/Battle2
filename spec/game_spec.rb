require 'game'

describe Game, :game do
  let(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double :player_1, health: 90, reduce_health: nil }
  let(:player_2) { double :player_2, health: 90, reduce_health: nil }

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
end
