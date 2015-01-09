require 'game_engine'

describe GameEngine do

  let(:game){GameEngine.new}

  context 'Can return' do
    it 'rock' do
      allow(game).to receive(:chance).and_return 1
      expect(game.response).to eq(:rock)
    end

    it 'paper' do
      allow(game).to receive(:chance).and_return 2
      expect(game.response).to eq(:paper)
    end

    it 'scissors' do
      allow(game).to receive(:chance).and_return 3
      expect(game.response).to eq(:scissors)
    end
  end

  context 'Can receive user input of' do

    it 'rock' do
      game.player_select('rock')
      expect(game.player_choice).to eq :rock
    end

    it 'paper' do
      game.player_select('paper')
      expect(game.player_choice).to eq :paper
    end

    it 'scissors' do
      game.player_select('scissors')
      expect(game.player_choice).to eq :scissors
    end
  end

  context 'Rejects' do
    it 'invalid user input' do
      expect{game.player_select('banana')}.to raise_error(RuntimeError, 'This input is not valid!')
    end
  end

  context 'When player chooses rock' do
    before(:each){allow(game).to receive(:player_choice).and_return :rock}

    it 'Player can win' do
      allow(game).to receive(:response).and_return :scissors 
      expect(game.evaluate_rock).to eq :player
    end

    it 'Player can lose' do
      allow(game).to receive(:response).and_return :paper
      expect(game.evaluate_rock).to eq :computer
    end

    it 'Can be a draw' do
      allow(game).to receive(:response).and_return :rock
      expect(game.evaluate_rock).to eq :draw
    end
  end

  context 'When player chooses paper' do
    before(:each){allow(game).to receive(:player_choice).and_return :paper}

    it 'Player can win' do
      allow(game).to receive(:response).and_return :rock
      expect(game.evaluate_paper).to eq :player
    end

    it 'Player can lose' do
      allow(game).to receive(:response).and_return :scissors
      expect(game.evaluate_paper).to eq :computer
    end

    it 'Can be a draw' do
      allow(game).to receive(:response).and_return :paper
      expect(game.evaluate_paper).to eq :draw
    end
  end

  context 'When player chooses scissors' do
    before(:each){allow(game).to receive(:player_choice).and_return :scissors}

    it 'Player can win' do
      allow(game).to receive(:response).and_return :paper
      expect(game.evaluate_scissors).to eq :player
    end

    it 'Player can lose' do
      allow(game).to receive(:response).and_return :rock
      expect(game.evaluate_scissors).to eq :computer
    end

    it 'Can be a draw' do
      allow(game).to receive(:response).and_return :scissors
      expect(game.evaluate_scissors).to eq :draw
    end
  end

end


