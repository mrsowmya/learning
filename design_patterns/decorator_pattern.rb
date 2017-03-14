#Decorators allow us to add behavior to objects without affecting other objects of the same class.
#The Decorator pattern is useful alternative to creating sub-classes.


class Burger
  def cost
    50
  end
end

class BurgerWithCheese < Burger
  def cost
    60
  end
end

class LargeBurger < Burger
  def cost
    65
  end
end
