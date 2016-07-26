# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculator
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


class SimpleCalculator
  include Calculator

end

class FancyCalculator
  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

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






