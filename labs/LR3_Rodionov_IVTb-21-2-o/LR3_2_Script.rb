class Pokemon
    def initialize(name, color)
        raise "Wrong arguments. Must be String" unless (name.is_a? String)
        @name = name
        @color = color
    end

    def toHash()
        return Hash[name: @name, color: @color]
    end
end

def numberOfPokemons
    puts "Сколько покемонов добавить?"
    count = (gets.chomp).to_i
    return count
end

def groupAllPokemons(count)
    pokemonList = []

    for i in 1..count do
        print "Введите имя покемона: "
        name = gets.chomp
        print "Введите цвет покемона: "
        color = gets.chomp

        pokemonList.append(Pokemon.new(name, color))
    end

    return pokemonList
end

def viewResultOfPokemons(pokemonList)
    array_of_hashes = pokemonList.collect { |p| p.toHash()}
    hash_strings = array_of_hashes.map { |hash|  "{ name: '#{hash[:name]}', color: '#{hash[:color]}' }" }
    result = "[#{hash_strings.join(', ')}]"
    return result
end

count = numberOfPokemons
array = groupAllPokemons(count)
result = viewResultOfPokemons(array)

puts result
