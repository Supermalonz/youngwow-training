class Tree
  attr_reader :left, :right, :value

  def initialize(tree)
    @value, @left, @right = tree
    @left = Tree.new @left if @left.is_a? Array
    @right = Tree.new @right if @right.is_a? Array
  end
end

class ProblemThree
  def visible_tree(tree)
    @count = 0
    node = Tree.new(tree)
    count_node(node, -Float::INFINITY)
  end

  def count_node(node, max_value)
    return @count if node.nil?
    
    if node.value >= max_value
      @count += 1
      max_value = [node.value, max_value].max
    end
    count_node(node.left, max_value)
    count_node(node.right, max_value)
  end
end
