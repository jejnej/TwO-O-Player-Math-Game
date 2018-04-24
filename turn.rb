module MathGame

class Turn 
    def initialize(player)
current_question = Question.new
puts "#{current_question.question}"
@answer = gets.chomp.to_i

if current_question.is_answer?(@answer)
    puts "☑️ Yay, that's correct! ☑️"

else 
    player.wrong_answer
    puts "❌ Errr, wrong. You lose a life! ❌"
end
end
end
end
   


        