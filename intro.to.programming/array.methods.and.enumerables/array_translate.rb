# Write a method array_translate that takes in an array whose elements
# alternate between words and numbers. The method should return a
# string where each word is repeated the number of times that
# immediately follows in the array.

# longer version
# def array_translate(array)
#     words = ''
#     i = 0
#     j = 1
#     while i < array.length() && j < array.length()
#         words = words + (array[i] * array[j])
#         i += 2
#         j += 2
#     end
#     return words
# end

# shorter version
def array_translate(array)
    new_str = ''
    i = 0
    while i < array.length
        ele = array[i]
        num = array[i+1]
        num.times {new_str += ele}
        i += 2
    end
    return new_str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
