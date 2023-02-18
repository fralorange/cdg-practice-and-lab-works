def index(filePath)
  File.foreach(filePath) { |person| puts person }
end

def find(filePath, id)
  File.foreach(filePath).with_index { |person, index| puts person if (index + 1) == id }
end

#def where(filePath, pattern)
#  File.foreach(filePath).with_index { |person, index| return }
#end
