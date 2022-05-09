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
    node = Tree.new(tree)
    count_node(node, -Float::INFINITY)
  end

  def count_node(node, max_value)
    if node.nil?
      return
    end
    
    if node.value >= max_value
      count_node += 1
      max_value = [node.value, max_value].max
    end
    count_node(node.left, max_value)
    count_node(node.right, max_value)
  end
end
