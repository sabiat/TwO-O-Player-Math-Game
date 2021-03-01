class Game
  def initialize
    @current_player = 1
  end

  def start
    puts "Player 1 enter your name"
    print "> "
    @player_1_name = gets.chomp
    puts "Hello #{@player_1_name}"
    puts "Player 2 enter your name"
    print "> "
    @player_2_name = gets.chomp
    puts "Hello #{@player_2_name}"
  end

  def run
    self.start
    @player1 = Player.new(@player_1_name)
    @player2 = Player.new(@player_2_name)
    @game = true
    while @game do
      if @current_player == 3 
        @current_player = 1
      end
      if @current_player == 1
        self.ask(@player1)
      else
        self.ask(@player2)
      end
      if @player1.score < 1 
        self.end_game(@player2)
        return
      elsif @player2.score < 1
        self.end_game(@player1)
        return
      end
      puts "P1: #{@player1.print_score} vs P2: #{@player2.print_score}"
      puts "------- NEW TURN ------------"
      @current_player += 1
    end
  end

  def end_game(player)
    @game = false
    puts "#{player.name} wins with a score of #{player.print_score}!"
    puts "------- GAME OVER ------------"
  end

  def ask(player)
    question = Question.new
    print "#{player.name}: "
    question.ask_question
    player_answer = gets.chomp.to_i
    if question.answer == player_answer
      puts "Correct!"
    else
      puts "Wrong answer"
      player.reduce_score
    end
  end
end


