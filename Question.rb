class Question

  def create_question(current_player)
    item1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].sample
    item2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].sample
    answer = item1 + item2
    puts "#{current_player.name}: What is #{item1} + #{item2}?"
    player_answer = gets.chomp
    if player_answer.to_i == answer
      true
    else
      false
    end
  end

end