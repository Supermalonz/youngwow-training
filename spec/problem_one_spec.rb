require './problem_one'

RSpec.describe ProblemOne do
  let(:instance) { ProblemOne.new }

  it 'return 5321' do
    expect(instance.largest_number(5123)).to eq 5321
  end

  it 'return 64431' do
    expect(instance.largest_number(44_163)).to eq 64_431
  end

  it 'return 321' do
    expect(instance.largest_number(213)).to eq 321
  end

  it 'return 553' do
    expect(instance.largest_number(553)).to eq 553
  end
end
