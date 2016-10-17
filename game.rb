class Game
  def initialize
    new_game
  end

  def new_game
    p "This example shows the sum of dices that the most fortunate"
    p "enter number of try"
    try = gets.chomp
    p "enter number of dices"
    dice = gets.chomp
    i = 0
    sum =[]

    while i < try.to_i do
      sum.push(calculate(dice.to_i))
      i = i+1
    end

    print_counts(sum)
  end

  def calculate(dices)
    i = 0
    sub =[]
    while i < dices do
      sub.push(rand(1..6))
      i = i+1
    end
    sub.inject(:+)
  end

  def count_words(dices)
    dices.each_with_object(Hash.new 0) do |dice, counter|
      counter[dice] += 1
    end
  end

  def print_counts(dices)
    sorted = count_words(dices).sort_by {|_key, value| value}
    sorted.each do |dice, count|
      puts "#{dice}: #{count}"
    end
  end

end

Game.new


