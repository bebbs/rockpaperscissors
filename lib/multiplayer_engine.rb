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

  def evaluate_winner(player1_choice, player2_choice)
    case
      when player1_choice == :rock && player2_choice == :paper then :player2
      when player1_choice == :rock && player2_choice == :scissors then :player1
      when player1_choice == :rock && player2_choice == :rock then :draw

      when player1_choice == :paper && player2_choice == :scissors then :player2
      when player1_choice == :paper && player2_choice == :rock then :player1
      when player1_choice == :paper && player2_choice == :paper then :draw

      when player1_choice == :scissors && player2_choice == :rock then :player2
      when player1_choice == :scissors && player2_choice == :paper then :player1
      when player1_choice == :scissors && player2_choice == :scissors then :draw
      else raise "Couldn\'t process selections - invalid choice"
    end
  end

  private
    def has_two_players?
      !player2.nil?
    end
 
end
