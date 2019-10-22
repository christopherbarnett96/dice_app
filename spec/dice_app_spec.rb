require 'dice_app'

describe Dice do
  it 'Rolls a number between 1 and 6' do
    srand 200
    expect(subject.roll(1)).to eq 1
  end

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
