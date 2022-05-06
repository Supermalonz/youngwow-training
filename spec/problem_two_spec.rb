require './problem_two.rb'

RSpec.describe ProblemTwo do
  it 'return longest possible string contrains A, B, C' do
    problem_two = ProblemTwo.new
    expect(problem_two.largest_number(6, 1, 1)).to eq "aacaabaa"
  end
end