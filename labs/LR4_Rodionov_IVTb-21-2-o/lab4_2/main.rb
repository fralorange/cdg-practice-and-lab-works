require_relative "../lab4_1"

MAIN_NAME_PATH = "lab4_2/people.txt" # такой путь если запускается из категории LR4_RODIONOV_ITVB-21-2-O
#если запускать из категории lab4_2, то путь следует изменить на "people.txt"
RESULTS_NAME_PATH = "lab4_2/results.txt" # тоже самое

age = 0
full = true

while ((age.to_i != -1) && full)
  print "Введите своё возраст: "
  age = gets.chomp

  peopleOfSameAge = where(MAIN_NAME_PATH, age)
  (next unless (File.readlines(RESULTS_NAME_PATH) & peopleOfSameAge).empty?) if File.exists?(RESULTS_NAME_PATH)

  File.open(RESULTS_NAME_PATH, "a+") do |file|
    file.write(peopleOfSameAge.join)
  end

  full = false if (File.readlines(RESULTS_NAME_PATH).sort == File.readlines(MAIN_NAME_PATH).sort)
end

puts "Результаты: "
index(RESULTS_NAME_PATH)
