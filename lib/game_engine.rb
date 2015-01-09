class GameEngine

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

  def player_choice(choice)
    case choice
      when 'rock' then :rock
      when 'paper' then :paper
      when 'scissors' then :scissors
      else raise 'This input is not valid!'
    end
  end

  def evaluate_winner(choice)
    case 
      when choice == :rock && response == :scissors then :player
      when choice == :rock && response == :paper then :computer
      when choice == :rock && response == :rock then :draw

      when choice == :paper && response == :rock then :player
      when choice == :paper && response == :scissors then :computer
      when choice == :paper && response == :paper then :draw
    end
  end

end