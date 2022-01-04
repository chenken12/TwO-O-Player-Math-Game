class Player
  attr_reader :score, :name

  def initialize(name)
    @score = 3
    @name = name
  end

  def incorrect
    @score -= 1
  end

  def winner
    puts "Player #{name} wins with a score of #{score}/3"
  end

  def question
    num1 = rand(1..10)
    num2 = rand(1..10)
    print "Player #{name}: What does #{num1} plus #{num2} equal? \n> "
    
    begin
      # put code at risk of failing here
      answer = gets.chomp.to_i

      if num1 + num2 == answer
        puts "Player #{name}: YES! You are correct"
      else
        puts "Player #{name}: Seriously No!"
        incorrect
      end

    rescue TypeError => e  
      # take action
      puts e
      incorrect
    end
    
  end

end

