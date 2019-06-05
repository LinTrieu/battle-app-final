require 'player'

describe Player do
  subject(:dave) {Player.new('Dave')}

  describe '#name' do
    it 'returns a name' do
      expect(dave.name).to eq 'Dave'
    end
  end

end