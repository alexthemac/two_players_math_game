class Player

  attr_reader :name, :life

  def initialize(name, id)
    @name = name
    @id = id
    @life = 3
  end

  # Method to subtract life
  def lose_life
    @life -= 1
  end

  # Method to print current life
  def print_life
    "#{@id}: #{@life}/3"
  end

end
