class GameEngine

  def initialize
    @player_choice = nil
  end

  attr_reader :player_choice

  def chance
    rand(1..3)
  end

  def response
    case chance
      when 1 then :rock
      when 2 then :paper
      when 3 then :scissors
    end
  end

  def player_select(input)
    case input
      when 'rock' then @player_choice = :rock
      when 'paper' then @player_choice = :paper
      when 'scissors' then @player_choice = :scissors
      else raise 'This input is not valid!'
    end
  end

  def evaluate_rock
    case 
      when player_choice == :rock && response == :scissors then :player
      when player_choice == :rock && response == :paper then :computer
      when player_choice == :rock && response == :rock then :draw
    end
  end

  def evaluate_paper
    case
      when player_choice == :paper && response == :rock then :player
      when player_choice == :paper && response == :scissors then :computer
      when player_choice == :paper && response == :paper then :draw
    end
  end
      
  def evaluate_scissors
    case
      when player_choice == :scissors && response == :paper then :player
      when player_choice == :scissors && response == :rock then :computer
      when player_choice == :scissors && response == :scissors then :draw
    end
  end

end