# Below, we have two types of calculators. The simple one can perform basic arithmetic,
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is
# a fundamental concept in OOP known as Inheritance. Your exercise is to research
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code
# below. You must also write the driver code to test your classes.
class Calculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator < Calculator
end

class FancyCalculator < Calculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:

if SimpleCalculator.new.add(1, 2) == 3
  p 'Simple add passed'
else
  p 'Simple add failed'
end

if FancyCalculator.new.add(1, 2) == 3
  p 'Fancy add passed'
else
  p 'Fancy add failed'
end

if SimpleCalculator.new.subtract(1, 2) == -1
  p 'Simple subtract passed'
else
  p 'Simple subtract failed'
end

if FancyCalculator.new.subtract(1, 2) == -1
  p 'Fancy subtract passed'
else
  p 'Fancy subtract failed'
end

if SimpleCalculator.new.multiply(2, 2) == 4
  p 'Simple multiply passed'
else
  p 'Simple multiply failed'
end

if FancyCalculator.new.multiply(2, 2) == 4
  p 'Fancy multiply passed'
else
  p 'Fancy multiply failed'
end

if SimpleCalculator.new.divide(6, 2) == 3
  p 'Simple divide passed'
else
  p 'Simple divide failed'
end

if FancyCalculator.new.divide(6, 2) == 3
  p 'Fancy divide passed'
else
  p 'Fancy divide failed'
end

if FancyCalculator.new.square_root(4) == 2
  p 'Fancy square_root passed'
else
  p 'Fancy square_root failed'
end




