require 'multiplayer_engine'

describe MultiplayerEngine do
  
  let(:game){MultiplayerEngine.new("Josh", "Dave")}
  let(:first_player){player1}

  context 'Setting up' do

    it 'should create the first player' do
      expect(game.player1.name).to eq "Josh"
    end

    it 'should create the second player' do
      expect(game.player2.name).to eq "Dave"
    end
  end

end