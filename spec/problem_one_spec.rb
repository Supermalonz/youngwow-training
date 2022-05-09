require './problem_one'

RSpec.describe ProblemOne do
  it 'return largest number from integer' do
    problem_one = ProblemOne.new
    expect(problem_one.largest_number(5123)).to eq 5321
  end

  it 'return largest number from integer' do
    problem_one = ProblemOne.new
    expect(problem_one.largest_number(44163)).to eq 64431
  end

  it 'return largest number from integer' do
    problem_one = ProblemOne.new
    expect(problem_one.largest_number(213)).to eq 321
  end

  it 'return largest number from integer' do
    problem_one = ProblemOne.new
    expect(problem_one.largest_number(553)).to eq 553
  end
end
