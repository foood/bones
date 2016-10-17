class Game
  def initialize
    new_game
  end

  def new_game
    p "This example shows the sum of dices that the most fortunate"
    p "enter number of attempts"
    attempts = gets.chomp
    p "enter number of dices"
    dices = gets.chomp
    i = 0
    sum =[]

    while i < attempts.to_i do
      sum.push(calculate(dices.to_i))
      i +=1
    end

    print_counts(sum)
  end

  def calculate(dices)
    i = 0
    sub =[]
    while i < dices do
      sub.push(rand(1..6))
      i +=1
    end
    sub.inject(:+)
  end

  def count_dices(dices)
    dices.each_with_object(Hash.new 0) do |dice, counter|
      counter[dice] += 1
    end
  end

  def print_counts(dices)
    sorted = count_dices(dices).sort_by {|_key, value| value}
    sorted.each do |dice, count|
      puts "sum #{dice}: caught #{count} times"
    end
  end

end

Game.new


