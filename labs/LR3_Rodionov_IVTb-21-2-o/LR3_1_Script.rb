def checkEnding(str)
    return nil unless str.is_a? String
    return str.end_with?("CS") ? 2 ** str.length : str.reverse
end

firstStr = "POLITICS"
secondStr = 1
thirdStr = "Aura"

puts checkEnding(firstStr)
puts checkEnding(secondStr)
puts checkEnding(thirdStr)