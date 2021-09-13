require './player'
require './question'

class Game

  def initialize
    @player1 = Player.new("Player 1","P1")
    @player2 = Player.new("Player 2","P2")
    @current_asker = @player1
    @current_responder = @player2
  end

  # Create new question
  def create_question
    @rand1 = rand(1..20)
    @rand2 = rand(1..20)
    @question = Question.new(@rand1, @rand2)
  end

  # Ask question
  def ask_question
    puts "#{@current_asker.name}: #{@question.print}"
  end

  # Get user inputted answer and convert to integer
  def get_answer
    @user_answer = gets.chomp.to_i
  end

  # Compare user inputted answer to correct question answer
  def compare_answer

    if @question.answer == @user_answer 
      return true
    end

    # return false if incorrect
    false

  end

  # Prints appropriate statement if answer is correct or not
  def player_response

    if compare_answer
      return puts "#{@current_asker.name}: YES! You are correct."
    end

    puts "#{@current_asker.name}: Seriously? No!"

  end

  # Switch asker and responder each round
  def switch_players
      
      if @current_asker == @player1
        @current_asker = @player2
        @current_responder = @player1
      else
        @current_asker = @player1
        @current_responder = @player2
      end

  end

  # Update lifes of each player object
  def update_lifes

    if !compare_answer
      @current_responder.lose_life
    end

    puts "#{@player1.print_life} vs #{@player2.print_life}"

  end

  # Run the program
  def run

    while @player1.life > 0 && @player2.life > 0
      create_question
      ask_question
      get_answer
      player_response
      update_lifes
      switch_players
      # Prevents displaying NEW TURN message on last turn once winner decided
      if @player1.life > 0 && @player2.life > 0
        puts "----- NEW TURN -----"
      end
    end
    
    if @player1.life == 0
      puts "#{@player2.name} wins with a score of #{@player2.life}/3"
    else 
      puts "#{@player1.name} wins with a score of #{@player1.life}/3"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"

  end

end