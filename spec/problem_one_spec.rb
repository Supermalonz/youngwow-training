require './problem_one.rb'

RSpec.describe ProblemOne do
  it 'return largest number from integer' do
    problem_one = ProblemOne.new
    expect(problem_one.largest_number(5123)).to eq 5321
  end
end