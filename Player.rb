class Player
  
  attr_accessor :name, :total_lives, :current_lives, :current_player

  Total_lives = 3

  def initialize(n, c)
    @name           = n
    @total_lives    = Total_lives
    @current_lives  = Total_lives
    @current_player = c
  end

  def lose_life
    @current_lives -= 1
  end

end