module BTree
  class Node

    attr_accessor :left, :right
    attr_reader :data

    def initialize(data)
      @data  = data
    end

    def insert(value)
      if value <= data
        if left.nil?
          self.left = self.class.new(value)
        else
          left.insert(value)
        end
      else
        if right.nil?
          self.right = self.class.new(value)
        else
          right.insert(value)
        end
      end
    end

    def contains(value)
      return true if value == data

      if value < data
        return false if left.nil?
        left.contains(value)
      else
        return false if right.nil?
        right.contains(value)
      end
    end

    def print_in_order
      left.print_in_order if left

      puts data

      right.print_in_order if right
    end

    def print_pre_order
      puts data

      left.print_pre_order if left
      right.print_pre_order if right
    end

    def print_post_order
      left.print_pre_order if left
      right.print_pre_order if right

      puts data
    end

  end
end

n = BTree::Node.new(10)

n.insert(5)
puts n.inspect

n.insert(15)
puts n.inspect

n.insert(8)
puts n.inspect

n.insert(18)
puts n.inspect

puts n.contains(18)
puts n.contains(8)
puts n.contains(28)

puts "==========InOrder"
n.print_in_order
puts "====================PreOrder"
n.print_pre_order
puts "======================PostOrder"
n.print_post_order

puts n.inspect
