require './test/test_helper'
require './lib/linked_list'
require './lib/jungle_beats'

class JungleBeatTest < Minitest::Test

  def test_can_create_jungle_beats
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_jungle_beats_can_create_list
    jb = JungleBeat.new
    assert jb.list
  end

  def test_jungle_beats_starts_with_empty_head
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_can_append_string_of_beats_to_list
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_can_check_head_on_list_from_jungle_beats
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
  end

  def test_can_check_next_node_of_head_from_jungle_beats
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
    jb.append("deep doo ditt")
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_can_count_jungle_beat_list
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
    jb.append("deep doo ditt")
    assert_equal 3, jb.count
  end

  def test_can_play_jungle_beat_list
    jb = JungleBeat.new
    jb.append("Hello Ilana. Welcome to Daniel's Jungle Beats project.
              please have a look and tell him what you think.
              Are you ready to evaluate me? Please be gentle as I have a lot
              of complex moving parts. Let's do this!")
    # jb.append("deep doo ditt deep doo ditt woo hoo shudeep doo ditt woo hoo ")
    jb.play
    assert_equal 39, jb.count
  end
end
