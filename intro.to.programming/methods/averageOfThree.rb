#Write a method average_of_three(num1, num2, num3)
#that returns the average of three numbers

def averageOfThree(num1, num2, num3)
    sum = num1 + num2 + num3
    avg = sum / 3.0
    return avg
end

puts (averageOfThree(3, 7, 8))
puts (averageOfThree(2, 5, 17))
puts (averageOfThree(2, 8, 1))
