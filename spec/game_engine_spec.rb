require 'game_engine'

describe GameEngine do

  let(:game){GameEngine.new}

  context 'Can return'

  it 'rock' do
    allow(game).to receive(:chance).and_return(1)
    expect(game.response).to eq("Rock")
  end

  it 'paper' do
    allow(game).to receive(:chance).and_return(2)
    expect(game.response).to eq("Paper")
  end

  it 'scissors' do
    allow(game).to receive(:chance).and_return(3)
    expect(game.response).to eq("Scissors")
  end

end