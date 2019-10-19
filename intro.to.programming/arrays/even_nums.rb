# Write a method even_nums(max) that takes in a number max and returns an
# array containing all even numbers from 0 to max

def even_nums(max)
    i = 0
    num = []
    while i <= max
        if i % 2 == 0
            num << i
        end
        i += 1
    end
    return num
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
puts
