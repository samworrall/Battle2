require 'game'

describe Game, :game do
  let(:game) { Game.new(player1, player2) }
  let(:player1) { double :player1, health: 90, reduce_health: nil }
  let(:player2) { double :player2, health: 90, reduce_health: nil }

  it 'initializes with two players' do
    expect(game.player1).to eq player1
    expect(game.player2).to eq player2
  end

  describe '#bread_pitt' do
    it 'Reduces pitta points by 10' do
      game.bread_pitt(player1)
      expect(game.player1.health).to eq 90
    end
  end
end
