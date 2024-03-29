# Write a method to_initials that takes in a person's name string and
# returns a string representing their initials.

def to_initials(name)
    initials = ""
    arrName = name.split(' ')
    arrName.each { | name | initials += name[0] }
    return initials
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
