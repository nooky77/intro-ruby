# Write a method that takes in a string and returns the number of times that
# the same letter repeats twice in a row.

def double_letter_count(str)
    count = 0

    str.each_char.with_index do |char, idx|
        if char == str[idx + 1]
            count += 1
        end
    end

    return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
