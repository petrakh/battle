require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      allow(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#switch_turns' do
    it 'changes the current player after each attack' do
      #allow(player_2).to receive(:receive_damage)
      game.switch_turns
      expect(game.current_player).to eq player_2
    end

    it 'changes the current victim after each attack' do
      #allow(player_2).to receive(:receive_damage)
      game.switch_turns
      expect(game.current_victim).to eq player_1
    end
  end

  describe '#current_turn' do
    it 'shows the first player at the beginning' do
      expect(game.current_player).to eq player_1
    end
  end


end
