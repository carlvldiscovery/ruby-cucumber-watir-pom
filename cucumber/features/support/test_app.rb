# Not part of this demo, just something to run tests against.
class TestApp
  def initialize
    @current = 0
  end

  def add(number)
    @current += number
  end

  def subtract(number)
    @current -= number
  end
  
  def multiply(num1,num2)
    @current = num1*num2
  end

  def get_value
    @current
  end
end
