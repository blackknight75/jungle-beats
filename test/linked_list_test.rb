require './test/test_helper'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def test_jungle_beat_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_has_head_node
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_can_add_node_to_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_check_next_node
    list = LinkedList.new
    list.append("beep")
    assert_equal nil, list.head.next_node
  end

  def test_can_print_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_can_add_two_nodes_to_list
    list = LinkedList.new
    list.append("doop")
    assert_equal "beep", list.append("beep")
  end

  def test_can_count_more_than_one_node
    list = LinkedList.new
    list.append("doop")
    list.append("beep")
    assert_equal 2, list.count
  end

  def test_can_add_a_lot_of_nodes_to_list
    list = LinkedList.new
    list.append("beep")
    list.append("doop")
    list.append("bop")
    list.append("grr")
    list.append("beep")
    list.append("bing")
    list.append("beep")
    list.append("beep")
    list.append("wap")
    list.append("bo")
    assert_equal "bo", list.append("bo")
    assert_equal 11, list.count
  end

  def test_can_prepend_node_to_list
    list = LinkedList.new
    list.append("plop")
    assert_equal "plop", list.to_string
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_can_count_prepended_list
    list = LinkedList.new
    node_1 = Node.new("plop")
    node_2 = Node.new("suu")
    node_3 = Node.new("dop")
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal 3, list.count
  end

  def test_can_insert_node_in_middle
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.append("yu")
    assert_equal "woo", list.insert(2, "woo")
    assert_equal "plop suu woo yu", list.to_string
  end

  def test_can_pop_node_off_back
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.append("yu")
    assert_equal "woo", list.insert(2, "woo")
    assert_equal "plop suu woo yu", list.to_string
    assert_equal "yu", list.pop
    assert_equal "plop suu woo", list.to_string
  end

  def test_check_if_list_includes_node
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.append("yu")
    assert_equal true, list.include?("yu")
    assert_equal false, list.include?("do")
  end

  def test_can_find_node_data
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.append("yu")
    list.append("swe")
    list.append("beep")
    list.append("bop")
    list.append("flop")
    list.append("dop")
    assert_equal "yu", list.find(2,1)
    assert_equal "yu, swe, beep", list.find(2, 3)
    assert_equal "yu, swe, beep, bop, flop", list.find(2, 5)
  end
end
