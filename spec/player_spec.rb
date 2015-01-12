require 'player'

describe Player do
  
  let(:player){Player.new("Josh")}

  context 'When creating a player' do
    it 'should have a name' do
      expect(player.name).to eq "Josh"
    end
  end

end