require './problem_three.rb'

describe ProblemThree do
  describe '#solution' do
    let(:instance) { described_class.new }

    context 'Case 1' do
      it 'return 4, when input is [5, [3, [20, nil, nil], [21, nil, nil]], [10, [1, nil, nil], nil]]' do
        subject = instance.visible_tree([5, [3, [20, nil, nil], [21, nil, nil]], [10, [1, nil, nil], nil]])
        expect(subject).to eq 4
      end
    end
  end
end
