# Not part of this demo, just something to run tests against.
class TestApp
  def initialize
    @current = 0
  end

  def add(number)
    @current += number
  end

  def get_value
    @current
  end
end
