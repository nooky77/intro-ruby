# Write a method all_else_equal that takes in an array of numbers.
# The method should return the element of the array that is equal to half of
# the sum of all elements of the array. If there is no such element,
# the method should return nil.

def all_else_equal(arr)
    arr.each do |num|
        if (sum(arr) / 2.0) == num
            return num
        end
    end
    return nil
end


def sum(arr)
    total = 0
    arr.each  { |num| total += num}
    return total
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array