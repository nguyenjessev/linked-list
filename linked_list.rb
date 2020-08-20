# frozen-string-literal: true

module LinkedList
  # This class represents the linked list
  class LinkedList
    attr_accessor :size, :head, :tail

    def initialize
      self.size = 0
      self.head = nil
      self.tail = nil
    end

    def append(value)
      node = Node.new(value)
      if tail
        tail.next_node = node
      else
        self.head = node
      end

      self.tail = node
      self.size += 1
      node
    end

    def prepend(value)
      node = Node.new(value)
      node.next_node = head if head

      self.head = node
      self.size += 1
      node
    end

    def at(index)
      return nil if (index + 1) > size

      pointer = head
      index.times do
        pointer = pointer.next_node
      end

      pointer
    end

    def pop; end

    def contains?(value); end

    def find(value); end

    def to_s
      return nil unless head

      pointer = head

      while pointer
        print "#{pointer} -> "
        pointer = pointer.next_node
      end

      puts 'nil'
    end
  end

  # This class represents a single node in a linked list
  class Node
    attr_accessor :value, :next_node

    def initialize(value = nil)
      @value = value
      @next_node = next_node
    end

    def to_s
      "( #{value} )"
    end
  end
end
