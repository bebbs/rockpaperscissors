class Player

  def initialize(name)
    @name = name
    @score = 0
  end

  attr_reader :name
  attr_accessor :score

  def win
    self.score += 1
  end

  def reset_score
    self.score = 0
  end
end