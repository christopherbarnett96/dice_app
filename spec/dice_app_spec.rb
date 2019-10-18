require 'dice_app'

describe Dice do
  it 'Rolls a number between 1 and 6' do
    expect(subject.roll(1)).to be_between(1, 6)
  end

  # it 'Allows user to roll as many dice as they want' do
  #   expect(subject.roll(7)).to eq 35
  # end

  it 'Returns an array of scores' do
    srand 200
    subject.roll(3)
    expect(subject.prev_rolls).to eq [3,2,1]
  end

  it 'Returns overall score' do
    subject.roll(6)
    expect(subject.score).to eq 21
  end
end
