require './test/test_helper'
require './lib/node'

# require "./lib/node"
# node = Node.new("plop")
# node.data
# node.next_node

class NodeTest < Minitest::Test

  def test_can_creat_node
    node = Node.new("something")
    assert_instance_of Node, node
  end

  def test_can_accept_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_there_is_a_next_node
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end
end
