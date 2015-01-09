require 'player'

describe Player do

  let(:player){Player.new('Josh')}

  
  context 'A player can' do
    it 'have a name' do
      expect(player.name).to eq 'Josh'
    end
  end

end