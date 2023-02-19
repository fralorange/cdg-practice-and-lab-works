def deposit(currentBalance, amount)
  while (amount <= 0)
    puts "Похоже вы ввели некорректную сумму, сумма должна быть больше нуля"
    print "Укажите корректную сумму: "
    amount = gets.chomp.to_i
  end
  return currentBalance + amount
end

def withdraw(currentBalance, amount)
  while (amount <= 0 && amount > currentBalance)
    puts "Похоже вы ввели некорректную сумму, сумма должна быть больше нуля, а также меньше или равна текущему балансу"
    print "Укажите корректную сумму: "
    amount = gets.chomp.to_i
  end
  return currentBalance - amount
end

def balance(fileName)
  File.open(fileName, "r") do |file|
    return file.readlines[0].to_i
  end
end
