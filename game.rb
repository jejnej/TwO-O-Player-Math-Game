module MathGame
class Game
    def initialize 
        puts "What is your name Player 1? "
        player1_name = gets.chomp

        puts "What is your name Player 2? "
        player2_name = gets.chomp
    
        @player1 = Player.new(player1_name)
        @player2 = Player.new(player2_name)
        @current_player = @player1
    end
    

    def play
        puts "===#{@player1.name} You start!===="
    while(@player1.lives !=0 && @player2.lives !=0) do
    if(@current_player == @player1)
     Turn.new(@player1)
      puts "===#{@player1.name} you have #{@player1.lives}/3.=="
      puts "==== ✨ #{@player2.name} Your turn!!===="
      @current_player = @player2
      else
        Turn.new(@player2)
        puts "== #{@player1.name} you have #{@player2.lives}/3==="
        puts "==== ✨ #{@player1.name} Your turn!!===="
        @current_player = @player1
      end
    end
    if @player1.lives == 0 
        puts "#{@player2.name} wins with #{@player2.lives}/3"
        puts "=== 💀 Game Over 💀 ==="

    elsif @player2.lives == 0 
        puts "#{@player1.name} wins with #{@player1.lives}/3"
        puts "=== 💀 Game Over 💀 ==="
    end
end

end
end




  
   