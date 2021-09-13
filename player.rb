class Player

  attr_reader :name
  # attr_writer :id


  def initialize(name, id)
    @name = name
    @id = id
    @life = 3
  end

  def lose_life
    @life -= 1
  end

  def print_life
    puts "#{@id}: #{@life}/3"
  end

end

# player1 = Player.new("P1")
# player2 = Player.new("P2")

# player1.print_life
# player2.print_life

# player1.lose_life
# player1.print_life

# player1.lose_life
# player1.print_life

# player2.print_life




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