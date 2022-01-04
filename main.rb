require './player'

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")

puts "p1: #{p1.score}" 
puts "p2: #{p2.score}" 

while p1.score > 0 && p2.score > 0
  puts "----- NEW TURN -----"
  check = question(p2.name)
  if check == true 
    puts "YES! You are correct"
  else 
    puts "Seriously No!"
    p2.incorrect
  end
  puts "P1: #{p1.score} p2: #{p2.score}" 
end

puts "----- GAME OVER -----"
puts "Goodbye"