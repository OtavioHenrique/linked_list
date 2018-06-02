# frozen_string_literal: true

require "minitest/autorun"
require "node"

class ListTest < Minitest::Test
  def test_list_head
    node = Node.new(value: 123)
    list = List.new(head: node)

    assert_equal list.head, node
  end

  def test_list_each
    list = List.new

    assert_kind_of Enumerable, list
  end

  def test_list_tail
    node = Node.new(value: 123)
    list = List.new(tail: node)

    assert_equal list.tail, node
  end

  def test_list_tail_setter
    node = Node.new(value: 123)
    list = List.new
    list.tail = node

    assert_equal list.tail, node
  end

  def test_list_head_setter
    node = Node.new(value: 123)
    list = List.new
    list.head = node

    assert_equal list.head, node
  end

  def test_add_node_on_empty_list
    list = List.new
    list.add(12)

    assert_equal list.head.value, 12
  end

  def test_add_node
    list = List.new

    for number in 1..10 do
      list.add(number)
    end

    list.add(99)

    assert_equal list.tail.value, 99
  end

  def test_list_pop
    list = List.new

    for number in 1..10 do
      list.add(number)
    end

    list.pop

    assert_equal list.tail.value, 9
  end

  def test_list_shift
    list = List.new

    for number in 1..10 do
      list.add(number)
    end

    list.shift

    assert_equal list.head.value, 2
  end

  def test_list_unshift
    list = List.new

    list.add(10)
    list.add(20)
    list.add(30)
    list.add(50)

    list.unshift(5)

    assert_equal list.head.value, 5
  end

  def test_list_print
    list = List.new

    list.add(10)
    list.add(20)
    list.add(30)
    list.add(50)

    assert_equal list.print, "10 <-> 20 <-> 30 <-> 50"
  end
end

