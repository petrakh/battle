require 'player'

describe Player do
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'shows its name when requested' do
      expect(mittens.name).to eq 'Mittens'
    end
  end
end
