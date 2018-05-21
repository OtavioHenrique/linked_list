#frozen_string_literal: true

require "minitest/autorun"
require "node"

class NodeTest < Minitest::Test
  def test_creating_node
    node = Node.new()

    assert_instance_of Node, node
  end

  def test_node_value
    value = 10
    node = Node.new(value: value)

    assert_equal node.value, value
  end

  def test_next_node
    node2 = Node.new(value: 13, next_node: nil)
    node = Node.new(value: 12, next_node: node2)

    assert_equal node.next_node, node2
  end

  def test_previus_node
    node2 = Node.new(value: 13, previus_node: nil)
    node = Node.new(value: 12, previus_node: node2)

    assert_equal node.previus_node, node2
  end
end
