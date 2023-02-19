require "io/console"
require_relative "transactions"

#рассчитано на то, что запуск идёт из категории LR4_Rodionov_IVTb-21-2-o
BALANCE_FILE_PATH = "lab4_3/balance.txt"
DEFAULT_BALANCE = 100

currentBalance = 0

#init balance
unless (File.exist?(BALANCE_FILE_PATH))
  File.open(BALANCE_FILE_PATH, "w") do |file|
    file.write(DEFAULT_BALANCE)
  end
end


currentBalance = balance(BALANCE_FILE_PATH)

loop do
  puts "Для того, чтобы внести средства на счёт нажмите D (deposit)\nДля того, чтобы снять средства с счёта нажмите W (withdraw)\nДля того, чтобы посмотреть текущий баланс на счёте нажмите B (balance)\nДля того, чтобы прекратить все операции и выйти нажмите Q (quit)."
  input = STDIN.getch.downcase
  case input
  when 'd'
    puts "\nДля того, чтобы внести 100 рублей нажмите 1\nДля того, чтобы внести 500 рублей нажмите 2\nДля того, чтобы внести 1000 рублей нажмите 3\nДля того, чтобы внести другую сумму нажмите 4\nДля того, чтобы отменить операцию нажмите любую другую клавишу"
    sub_input = STDIN.getch
    case sub_input
    when '1'
      currentBalance = deposit(currentBalance, 100)
    when '2'
      currentBalance = deposit(currentBalance, 500)
    when '3'
      currentBalance = deposit(currentBalance, 1000)
    when '4'
      print "Укажите сумму: "
      amount = gets.chomp.to_i
      currentBalance = deposit(currentBalance, amount)
      puts
    else
      puts "Операция отменена"
    end
  when 'w'
    print "\nУкажите сумму: "
    amount = gets.chomp.to_i
    currentBalance = withdraw(currentBalance, amount)
    puts
  when 'b'
    puts "\nТекущий баланс: #{currentBalance}"
  when 'q'
    File.open(BALANCE_FILE_PATH, "w") do |file|
      file.write(currentBalance.to_s)
    end
    break
  end
  puts
end
