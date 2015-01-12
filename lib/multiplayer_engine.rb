class MultiplayerEngine
  
  def initialize
    @player1 = nil
    @player2 = nil
  end

  attr_accessor :player1, :player2

  def create_player(name)
    self.player1.nil? ? self.player1 = Player.new(name) : self.player2 = Player.new(name) unless has_two_players?
  end

  def ready?
    has_two_players?
  end

  private
    def has_two_players?
      !player2.nil?
    end
 
end