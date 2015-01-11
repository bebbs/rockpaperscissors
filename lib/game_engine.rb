class GameEngine

  attr_reader :choice

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

  def input(selection)
    case selection
      when 'rock' then @choice = selection.to_sym
      when 'paper' then @choice = selection.to_sym
      when 'scissors' then @choice = selection.to_sym
      else raise 'This input is not valid'
    end
  end

  def evaluate_winner
    case choice
      when :rock then evaluate_rock
      when :paper then evaluate_paper
      when :scissors then evaluate_scissors
    end
  end

  def evaluate_rock
    case response
      when :scissors then :player
      when :paper then :computer
      when :rock then :draw
    end
  end

  def evaluate_paper
    case response
      when :rock then :player
      when :scissors then :computer
      when :paper then :draw
    end
  end

  def evaluate_scissors
    case response
      when :paper then :player
      when :rock then :computer
      when :scissors then :draw
    end 
  end

end