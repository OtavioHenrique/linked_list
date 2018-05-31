# frozen_string_literal: true

class Node
  attr_reader :value
  attr_accessor :previus_node, :next_node

  def initialize(value: nil, previus_node: nil, next_node: nil)
    @value = value
    @previus_node = previus_node
    @next_node = next_node
  end
end
