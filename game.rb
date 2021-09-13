require './player'
require './question'

class Game

  attr_reader :user_answer

  def initialize
    @player1 = Player.new("Player1","P1")
    @player2 = Player.new("Player2","P2")
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

  # Get answer and convert to integer
  def get_answer
    @user_answer = gets.chomp.to_i
  end

  # Compare input answer to correct question answer
  def compare_answer

    if @question.answer == @user_answer 
      return true
    end

    false

  end

  # Prints appropriate statement if answer is correct or not
  def player_response
    if compare_answer
      return puts "#{@current_asker.name}: YES! You are correct."
    end
    puts "#{@current_asker.name}: Seriously? No!"
  end

  # switch players and print new turn line
  def new_turn
      
      if @current_asker = @player1
        @current_asker = @player2
        @current_responder = @player1
      
      elsif @current_asker = @player2
        @current_asker = @player1
        @current_responder = @player2
      end
    
    puts "----- NEW TURN -----"

  end

  # def update_lifes

  #   if @current_asker = @player1
  #     @current_asker = @player2
  #     @current_responder = @player1
    
  #   elsif @current_asker = @player2
  #     @current_asker = @player1
  #     @current_responder = @player2
  #   end

  # end


  



end

game1 = Game.new()

game1.create_question

game1.ask_question

game1.get_answer

# game1.compare_answer

game1.player_response


game1.new_turn

game1.create_question

game1.ask_question

game1.get_answer

# game1.compare_answer

game1.player_response






# players class
# lifes state
# initialize with 3 lifes
# function to remove lifes
# initialiez unique identifier per player
# (require in game)

# player1 instance
# player2 instance

# game class 
# function to check when game is over
# function to set player (if current player...set to other player)
# state of current player
# answer = correct function
# (require in main)

# question class
# random number a and b constructor
# generate answer as well constructor
# generate question function (puts with a & b)
# (require in game)