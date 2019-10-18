class Dice

  def initialize
    @score = []
  end

  def roll(num)
    num.times do
      @score << rand(1..6)
    end
  end

  def prev_rolls
    @score
  end

  def score
    @score.sum
  end

end
