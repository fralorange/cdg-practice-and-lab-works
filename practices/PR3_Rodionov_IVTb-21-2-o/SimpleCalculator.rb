class SimpleCalculator
  def self.add(x, y)
    raise ArgumentError.new("One of the arguments is not numeric") unless (x.is_a?(Numeric) || y.is_a?(Numeric))
    return x + y
  end
  def self.substract(x, y)
    raise ArgumentError.new("One of the arguments is not numeric") unless (x.is_a?(Numeric) || y.is_a?(Numeric))
    return x - y
  end
  def self.multiply(x, y)
    raise ArgumentError.new("One of the arguments is not numeric") unless (x.is_a?(Numeric) || y.is_a?(Numeric))
    return x * y
  end
  def self.divide(x, y)
    raise ArgumentError.new("Can't divide by zero") if y == 0
    raise ArgumentError.new("One of the arguments is not numeric") unless (x.is_a?(Numeric) || y.is_a?(Numeric))
    return x.fdiv(y)
  end
end
