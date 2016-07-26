# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
module FancyCalculatorFunctions

  def square_root(number)
    Math.sqrt(number)
  end

end


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
  include FancyCalculatorFunctions

end

class WhizBangCalculator < Calculator
  include FancyCalculatorFunctions

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end

  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

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

if WhizBangCalculator.new.hypotenuse(3, 4) == 5
  p 'WhizBangCalculator hypotenuse passed'
else
  p 'WhizBangCalculator hypotenuse failed'
end

if WhizBangCalculator.new.exponent(2, 3) == 8
  p 'WhizBangCalculator exponent passed'
else
  p 'WhizBangCalculator exponent failed'
end

