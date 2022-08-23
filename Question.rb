class Question

  def create_question(current_player)
    item1 = rand(1..20)
    item2 = rand(1..20)
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