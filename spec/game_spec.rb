require './lib/game'

describe Game do

  subject(:game) {described_class.new}
  let(:sophie) { double :sophie }
  let(:nik) { double :nik}


  describe '#attack' do
    it 'damages the player' do
      expect(nik).to(receive(:receive_damage))
      game.attack(nik)
    end
  end
end
