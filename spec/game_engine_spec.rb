require 'game_engine'

describe GameEngine do
  
  let(:game){GameEngine.new}

  context 'Computer can make a choice of' do
    it 'rock' do
      allow(game).to receive(:chance).and_return 1
      expect(game.response).to eq :rock
    end

    it 'paper' do
      allow(game).to receive(:chance).and_return 2
      expect(game.response).to eq :paper
    end

    it 'scissors' do
      allow(game).to receive(:chance).and_return 3
      expect(game.response).to eq :scissors
    end
  end

  context 'Player can select' do
    it 'rock' do
      game.input('rock')
      expect(game.choice).to eq(:rock)
    end

    it 'paper' do
      game.input('paper')
      expect(game.choice).to eq(:paper)
    end

    it 'scissors' do
      game.input('scissors')
      expect(game.choice).to eq(:scissors)
    end
  end

  context 'Player can not select' do
    it 'any other values' do
      expect{game.input('banana')}.to raise_error(RuntimeError, 'This input is not valid')
    end
  end

  context 'When player chooses rock' do
    it 'they can win' do
      allow(game).to receive(:response).and_return :scissors
      expect(game.evaluate_rock).to eq :player
    end

    it 'they can lose' do
      allow(game).to receive(:response).and_return :paper
      expect(game.evaluate_rock).to eq :computer
    end

    it 'they can draw' do
      allow(game).to receive(:response).and_return :rock
      expect(game.evaluate_rock).to eq :draw
    end
  end

end