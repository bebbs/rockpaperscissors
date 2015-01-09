class GameEngine

  def chance
    rand(1..3)
  end

  def response
    case chance
      when 1 then "Rock"
      when 2 then "Paper"
      when 3 then "Scissors"
    end
  end

end