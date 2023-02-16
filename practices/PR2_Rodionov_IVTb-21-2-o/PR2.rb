def array_x2(array)
	unless array.is_a? Array then
		return nil
	end
	
	if array.empty? then
		puts "Массив пустой"
		return nil
	end
	
	unless array.any? { |e| e.is_a?(Fixnum) }
		puts "Невозможно обработать запрос"
		return nil
	end
	
	return array.reject { |e| !e.is_a?(Fixnum) }
end

firstArr = []
secondArr = [1, 2, 3, 4, 5]
thirdArr = [1, "faq", 'c', true, 2.5, 21, 5, 12, 12]
fourthArr = ["ffaf", 'a', "fds", true, false]

newFirstArr = array_x2(firstArr)
newSecondArr = array_x2(secondArr)
newThirdArr = array_x2(thirdArr)
newFourthArr = array_x2(fourthArr)

puts "Результаты:"
newFirstArr.each { |e| print "#{e} "} unless newFirstArr.nil?
puts
newSecondArr.each { |e| print "#{e} "} unless newSecondArr.nil?
puts
newThirdArr.each { |e| print "#{e} "} unless newThirdArr.nil? 
puts
newFourthArr.each { |e| print "#{e} "} unless newFourthArr.nil? 