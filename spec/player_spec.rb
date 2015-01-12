require 'player'

describe Player do
  
  let(:player){Player.new('Josh')}

  context 'When creating a player' do
    it 'should have a name' do
      expect(player.name).to eq 'Josh'
    end

    it 'should have a score' do
      expect(player.score).to eq 0
    end
  end

  context 'Score can' do
    it 'be updated' do
      expect{player.win}.to change{player.score}.by 1
    end

    it 'be reset' do
      player.reset_score
      expect(player.score).to eq 0
    end
  end

  context 'Player can' do
    it 'make a choice' do
      player.choose('rock')
      expect(player.choice).to eq :rock
    end
  end

end