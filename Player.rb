class Player
  
  attr_accessor :total_lives, :current_player

  Total_lives = 3

  def initialize(n)
    @name = n
    @total_lives = Total_lives
    @current_player = true
  end

  def lose_life
    if current_player
      @total_lives -= 1
    end
  end

end