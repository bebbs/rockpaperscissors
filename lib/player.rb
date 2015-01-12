class Player

  def initialize(name)
    @name = name
    @score = 0
    @choice = nil
  end

  attr_reader :name
  attr_accessor :score, :choice

  def win
    self.score += 1
  end

  def reset_score
    self.score = 0
  end

  def choose(selection)
    self.choice = selection.to_sym
  end
end