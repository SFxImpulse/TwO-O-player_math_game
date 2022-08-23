require './Player.rb'
require './Question.rb'

class Game

  player1 = Player.new("Player 1", true)
  player2 = Player.new("Player 2", false)
  new_question = Question.new

  while player1.current_lives > 0 && player2.current_lives > 0
    if player1.current_player = true
      puts "----- NEW TURN -----"
      result = new_question.create_question(player1)
      if result == true
        puts "YES! That's correct!"
      else
        puts "What? No dude!"
        player1.lose_life
        if player1.current_lives == 0
          puts "#{player2.name} wins with a score of #{player2.current_lives}/#{player2.total_lives}"
          puts "----- GAME OVER -----"
          break
        end
      end
      puts "P1: #{player1.current_lives}/#{player1.total_lives} vs P2: #{player2.current_lives}/#{player2.total_lives}"
      player1.current_player = false
      player2.current_player = true
    end

    if player2.current_player = true
      puts "----- NEW TURN -----"
      result = new_question.create_question(player2)
      if result == true
        puts "YES! That's correct!"
      else
        puts "What? No dude!"
        player2.lose_life
        if player2.current_lives == 0
          puts "#{player1.name} wins with a score of #{player1.current_lives}/#{player1.total_lives}"
          puts "----- GAME OVER -----"
          break
        end
      end
      puts "P1: #{player1.current_lives}/#{player1.total_lives} vs P2: #{player2.current_lives}/#{player2.total_lives}"
      player2.current_player = false
      player1.current_player = true
    end
  end

end