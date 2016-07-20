require './lib/player'

describe Player do

  subject(:player) {described_class.new('Dave')}

  it 'returns a player name' do
  expect(player.name).to eq 'Dave'
  end

end
