# Write a method greatest_factor_array that takes in an array of numbers and
# returns a new array where every even number is replaced with it's
# greatest factor. A greatest factor is the largest number that divides another
# with no remainder. For example the greatest factor of 16 is 8. (For the
# purpose of this problem we won't say the greatest factor of 16 is 16,
# because that would be too easy, ha)

# Shorter version
def greatest_factor_array(arr)
    greatest_factor = []
    arr.each { |num| num % 2 != 0 ? greatest_factor << num : greatest_factor << num / 2}
    return greatest_factor
end

# Longer version
# def greatest_factor_array(arr)
#     greatest = arr.map do |num|
#         if num % 2 == 0
#             greatest_factor(num)
#         else
#             num
#         end
#     end
#     return greatest
# end
#
# def greatest_factor(num)
#     (1...num).reverse_each do |factor|
#         if num % factor == 0
#             return factor
#         end
#     end
# end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
