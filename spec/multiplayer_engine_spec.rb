require 'multiplayer_engine'

describe MultiplayerEngine do
  
  let(:game){MultiplayerEngine.new}

  context 'Setting up' do

    before(:each) do 
      game.create_player("Josh")
      game.create_player("Dave")
    end

    it 'should create the first player' do
      expect(game.player1.name).to eq "Josh"
    end

    it 'should create the second player' do
      expect(game.player2.name).to eq "Dave"
    end

    it 'game can be ready' do
      expect(game.ready?).to be true
    end
  end

end