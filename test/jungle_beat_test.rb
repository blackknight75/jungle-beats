require './test/test_helper'
require './lib/jungle_beat'
require './lib/node'

# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"

class JungleBeatTest < Minitest::Test

  def test_jungle_beat_exists
    list = JungleBeat.new
    assert_instance_of JungleBeat, list
  end

  def test_has_head_node
    list = JungleBeat.new
    assert_equal nil, list.head
  end

  def test_can_add_node_to_list
    list = JungleBeat.new
    node_1 = Node.new("doop")
    assert_equal "doop", list.append(node_1)
  end

  def test_check_next_node
    list = JungleBeat.new
    node_1 = Node.new("beep")
    list.append(node_1)
    assert_equal nil, list.head.next_node
  end

  def test_can_reject_duplicate_beats
    list = JungleBeat.new
    node_1 = Node.new("doop")
    list.append(node_1)
    assert_equal 1, list.count
  end

  def test_can_print_string
    list = JungleBeat.new
    node_1 = Node.new("doop")
    list.append(node_1)
    assert_equal "doop", list.to_string
  end

  def test_can_add_two_nodes_to_list
    list = JungleBeat.new
    node_1 = Node.new("doop")
    node_2 = Node.new("beep")
    list.append(node_1)
    assert_equal "beep", list.append(node_2)
  end

  # def test_can_count_more_than_one_node
  #   list = JungleBeat.new
  #   node_1 = Node.new("doop")
  #   node_2 = Node.new("beep")
  #   node_3 = Node.new("bop")
  #   list.append(node_1)
  #   list.append(node_2)
  #   list.append(node_3)
  #   assert_equal 2, list.count
  # end

  # def test_can_add_three_nodes_to_list
  #   list = JungleBeat.new
  #   node_1 = Node.new("beep")
  #   node_2 = Node.new("doop")
  #   node_3 = Node.new("bop")
  #   list.append(node_1)
  #   list.append(node_3)
  #   assert_equal "doop", list.append(node_2)
  # end

  # def test_can_add_four_nodes_to_list
  #   list = JungleBeat.new
  #   node_1 = Node.new("beep")
  #   node_2 = Node.new("doop")
  #   node_3 = Node.new("bop")
  #   node_4 = Node.new("grr")
  #   node_5 = Node.new("plop")
  #   node_6 = Node.new("bing")
  #   node_7 = Node.new("dong")
  #   node_8 = Node.new("ring")
  #   node_9 = Node.new("wap")
  #   node_10 = Node.new("bo")
  #   list.append(node_1)
  #   list.append(node_3)
  #   list.append(node_4)
  #   list.append(node_1)
  #   list.append(node_3)
  #   list.append(node_4)
  #   list.append(node_1)
  #   list.append(node_3)
  #   list.append(node_4)
  #   assert_equal "doop", list.append(node_2)
  # end

  # def test_jungle_beat_can_create_node
  #   list = JungleBeat.new("beep")
  #   node = Node.new
  # end

end
