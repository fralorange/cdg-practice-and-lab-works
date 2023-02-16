def greeting
	print "Введи своё имя: "
	name = gets.chomp
	print "Введи свою фамилию: "
	surname = gets.chomp
	print "Введи свой возраст: "
	age = gets.chomp
	
	if (age.to_i < 18)
		puts "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
	else
		puts "Привет, #{name} #{surname}. Самое время заняться делом!"
	end
end

def foobar(firstNum, secondNum)
	if (firstNum.to_i == 20 || secondNum.to_i == 20)
		return secondNum.to_i
	else
		return firstNum.to_i + secondNum.to_i
	end
end

greeting;
puts ""
print "Введите первое число: "
fNum = gets.chomp
print "Введите второе число: "
sNum = gets.chomp

puts foobar(fNum, sNum)
	