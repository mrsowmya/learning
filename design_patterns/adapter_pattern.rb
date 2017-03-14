#Helps two incompatible interfaces to work together
#Imagine we have some code where we want to accomplish things in a variety of ways.
#One way to do this is with conditional branching

class Animal
  def speak(kind)
    puts case kind
    when :dog then "woof!"
    when :cat then "meow!"
    when :owl then "hoo!"
    end
  end
end

Animal.new.speak(:dog)

class Animal
  module Adapter
    module Dog
      def self.speak
        "woof!"
      end
    end

    module Cat
      def self.speak
        "meow!"
      end
    end
  end


end

