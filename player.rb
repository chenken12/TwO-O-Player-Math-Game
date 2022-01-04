class Player
  attr_reader :score, :name

  def initialize(name)
    @score = 3
    @name = name
  end

  def incorrect
    @score -= 1
  end

end

def question(p) 
  num1 = rand(1..10)
  num2 = rand(1..10)
  puts "#{p}: What does #{num1} plus #{num2} equal?"
  answer = gets.chomp.to_i
  if num1 + num2 == answer
    return true
  end
  return false
end