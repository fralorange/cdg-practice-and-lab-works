def index(filePath)
  File.foreach(filePath) { |person| puts person }
end

def find(filePath, id)
  File.foreach(filePath).with_index { |person, index| puts person if (index + 1) == id }
end

def where(filePath, pattern)
  File.foreach(filePath).select { |person| person.include? pattern}
end

def update(filePath, id, text)
  File.open(filePath, "r+") do |file|
    lines = file.readlines
    lines[id - 1] = text + "\n"
    file.rewind
    file.truncate(0)
    file.write(lines.join)
  end
end

def delete(filePath, id)
  File.open(filePath, "r+") do |file|
    lines = file.readlines
    lines.select!.with_index { |_, i| i != (id - 1)}
    file.rewind
    file.truncate(0)
    file.write(lines.join)
  end
end
