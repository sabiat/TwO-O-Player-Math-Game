class Player 
  attr_accessor :score, :name

  def initialize(name)
    @name = name
    @score = 3
  end

  def print_score
    "#{@score}/3"
  end

  def reduce_score
    self.score -= 1
  end
    

end