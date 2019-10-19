# Write a method first_in_array that takes in an array and two elements,
# the method should return the element that appears earlier in the array.

def first_in_array(arr, el1, el2)
    arr1 = []
    arr1.push(el1, el2)
    arr.each do |char1|
        arr1.each do |char2|
            if char1 == char2
                return char2
            end
        end
    end
end

# Simplified version

# def first_in_array(arr, ele1, ele2)
#     if arr.index(ele1) < arr.index(ele2)
#         return ele1
#     else
#         return ele2
#     end
# end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
