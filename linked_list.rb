# frozen-string-literal: true

module LinkedList
  # This class represents the linked list
  class LinkedList
    attr_accessor :head, :size

    def initialize
      self.size = 0
      self.head = nil
      self.tail = nil
    end

    def append(value); end

    def prepend(value); end

    def at(index); end

    def pop; end

    def contains?(value); end

    def find(value); end

    def to_s; end
  end

  # This class represents a single node in a linked list
  class Node
    attr_accessor :value, :next_node

    def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end
end
