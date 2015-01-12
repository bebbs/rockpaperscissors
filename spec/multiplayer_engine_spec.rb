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

  context 'Evaluating choices' do
    it 'should determine the winner when player1 chooses rock' do
      expect(game.evaluate_winner(:rock, :paper)).to eq :player2
      expect(game.evaluate_winner(:rock, :scissors)).to eq :player1
      expect(game.evaluate_winner(:rock, :rock)).to eq :draw
    end

    it 'should determine the winner when player1 chooses paper' do
      expect(game.evaluate_winner(:paper, :scissors)).to eq :player2
      expect(game.evaluate_winner(:paper, :rock)).to eq :player1
      expect(game.evaluate_winner(:paper, :paper)).to eq :draw
    end

    it 'should determine the winner when player1 chooses scissors' do
      expect(game.evaluate_winner(:scissors, :rock)).to eq :player2
      expect(game.evaluate_winner(:scissors, :paper)).to eq :player1
      expect(game.evaluate_winner(:scissors, :scissors)).to eq :draw
    end
  end

end
