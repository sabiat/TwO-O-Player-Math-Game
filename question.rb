class Question
  attr_accessor :answer
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2

  end

  def ask_question
    puts "What does #{@num1} plus #{@num2} equal?"
    puts "> "
  end



end