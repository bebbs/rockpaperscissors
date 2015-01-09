require 'game_engine'

describe GameEngine do

  let(:game){GameEngine.new}

  context 'Can return' do
    it 'rock' do
      allow(game).to receive(:chance).and_return 1
      expect(game.response).to eq('Rock')
    end

    it 'paper' do
      allow(game).to receive(:chance).and_return 2
      expect(game.response).to eq('Paper')
    end

    it 'scissors' do
      allow(game).to receive(:chance).and_return 3
      expect(game.response).to eq('Scissors')
    end
  end

  context 'Can receive user input of' do
    it 'rock' do
      expect(game.player_choice('rock')).to eq :rock
    end

    it 'paper' do
      expect(game.player_choice('paper')).to eq :paper
    end

    it 'scissors' do
      expect(game.player_choice('scissors')).to eq :scissors
    end
  end

  context 'Rejects' do
    it 'invalid user input' do
      expect{game.player_choice('banana')}.to raise_error(RuntimeError, 'This input is not valid!')
    end
  end


end