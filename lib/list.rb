# frozen_string_literal: true

class List
  attr_accessor :head, :tail

  def initialize(head: nil, tail: nil)
    @head = head
    @tail = tail
  end

  def add(value)
    new_node = Node.new(value: value)

    self.head = new_node if head.nil?
    self.tail = new_node if tail.nil?

    new_node.previus_node = self.tail
    self.tail.next_node = new_node

    self.tail = new_node
  end

  def pop
    old_tail = self.tail

    self.tail = old_tail.previus_node
    self.tail.next_node = nil

    old_tail.previus_node = nil
  end

  def shift
    old_head = self.head

    self.head = old_head.next_node
    self.head.previus_node = nil

    old_head.next_node = nil
  end
end
