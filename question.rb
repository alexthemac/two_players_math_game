class Question

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @sum = num1 + num2
  end

  def print
    "What does #{@num1} plus #{@num2} equal?"
  end

  def answer
    @sum
  end

end

# question1 = Question.new(2,3)

# question2 = Question.new(4,7)

# question1.print

# question1.answer

# question2.print

# question2.answer

# question1.print

# question1.answer



# question class
# random number a and b constructor
# generate answer as well constructor
# generate question function (puts with a & b)
# (require in game)

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

