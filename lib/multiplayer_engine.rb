class MultiplayerEngine
  
  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
  end

  attr_reader :player1, :player2
 
end