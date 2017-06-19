module Promtable
  def prompt(message = "What would you like to do?", symbol = ":> ")
    print message
    print symbol
    gets.chomp
  end
end

include Promtable
puts "Press Enter to begin"
@p1 = prompt("Player 1 plays...?")
puts "Press Enter to continue"
@p2 = prompt("Player 2 plays...?")

def rps(p1, p2)
    if @p1 == 'rock' && @p2 == 'scissors'
      puts "Player 1 won!"
    elsif 
       @p1 == 'paper' && @p2 == 'rock'
      puts "Player 1 won!"
    elsif 
       @p1 == 'scissors' && @p2 == 'paper'
      puts "Player 1 won!"
    elsif 
       @p1 == 'rock' && @p2 == 'paper'
      puts "Player 2 won!"
    elsif 
       @p1 == 'scissors' && @p2 == 'rock'
      puts "Player 2 won!"
    elsif 
       @p1 == 'paper' && @p2 == 'scissors'
      puts "Player 2 won!"
    else 
       puts "Draw!" 
    end
end

rps(@p1, @p2)