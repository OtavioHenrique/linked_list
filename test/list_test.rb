# frozen_string_literal: true

require "minitest/autorun"
require "node"

class ListTest < Minitest::Test
  def test_list_head
    node = Node.new(value: 123)
    list = List.new(head: node)

    assert_equal list.head, node
  end
end

