class GameEngine

  def chance
    rand(1..3)
  end

  def response
    case chance
      when 1 then 'Rock'
      when 2 then 'Paper'
      when 3 then 'Scissors'
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

end