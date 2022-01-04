require './player'

p1 = Player.new("1")
p2 = Player.new("2")
turn = 1

puts "p1: #{p1.score}" 
puts "p2: #{p2.score}" 

while p1.score > 0 && p2.score > 0
  puts "----- NEW TURN -----"
  if turn == 1
    p1.question
    turn = 2
  elsif turn == 2
    p2.question
    turn = 1
  end
  if p1.score == 0
    p2.winner
  elsif p2.score == 0
    p1.winner
  else
    puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3" 
  end
  
end

puts "----- GAME OVER -----"
puts "Goodbye"