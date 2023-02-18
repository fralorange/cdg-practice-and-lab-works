require_relative "SimpleCalculator"
require_relative "EngineeringCalculator"

puts SimpleCalculator.add(1, 3)
puts SimpleCalculator.substract(1, 3)
puts SimpleCalculator.multiply(2, 3)
puts SimpleCalculator.divide(2, 3)

puts EngineeringCalculator.power(5, 3)
puts EngineeringCalculator.percent(5, 9)
puts EngineeringCalculator.divide(5, 4)
