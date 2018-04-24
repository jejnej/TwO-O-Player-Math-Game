module MathGame
class Question

def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer= @num1 + @num2
end

def question 
  puts "What is #{@num1} + #{@num2} ❓"
end 

def is_answer?(answer)
@answer == answer
end
end
end




