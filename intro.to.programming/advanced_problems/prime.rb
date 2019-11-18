# Write a method prime? that takes in a number and returns a boolean,
# indicating whether the number is prime. A prime number is only divisible
# by 1 and itself.

# Shorter version
def prime?(num)
    if num < 2
        return false
    end
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

# Longer version
# def prime?(num)
#     if num < 2
#         return false
#     end
#     count = 0
#     i = 1
#     while i <= num
#         if num % i == 0
#             count += 1
#             if count > 2
#                 return false
#             end
#         end
#         i += 1
#     end
#     return true
# end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
