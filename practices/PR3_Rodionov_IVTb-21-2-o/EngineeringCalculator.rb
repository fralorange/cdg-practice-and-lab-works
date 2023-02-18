require_relative "SimpleCalculator"

class EngineeringCalculator < SimpleCalculator
  def self.power(x, pow)
    raise ArgumentError.new("One of the arguments is not numeric") unless (x.is_a?(Numeric) || y.is_a?(Numeric))
    return x ** pow
  end
  def self.percent(x, percentage)
    raise ArgumentError.new("One of the arguments is not numeric") unless (x.is_a?(Numeric) || y.is_a?(Numeric))
    return x * percentage / 100.0
  end
end
