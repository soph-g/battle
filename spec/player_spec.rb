require './lib/player'

describe Player do

  subject(:sophie) { described_class.new('Sophie') }
  subject(:nik) { described_class.new('Nik') }

  describe '#name' do
    it 'returns a player name' do
      expect(sophie.name).to eq 'Sophie'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(sophie.hit_points).to(eq(described_class::DEFAULT_HIT_POINTS))
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(nik).to(receive(:receive_damage))
      sophie.attack(nik)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit points' do
      expect { nik.receive_damage }.to(change { nik.hit_points }.by(-10) )
    end
  end

end
