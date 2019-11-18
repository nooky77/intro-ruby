# Write a method anagrams? that takes in two words and returns a boolean
# indicating whether or not the words are anagrams. Anagrams are words that
# contain the same characters but not necessarily in the same order.
# Solve this without using .sort

# Site version
# def anagrams?(word1, word2)
#     return count(word1) == count(word2)
# end
#
# def count(word)
#     count = Hash.new(0)
#     word.each_char do |char|
#         count[char] += 1
#     end
#     return count
# end

# My version
def anagrams?(word1, word2)
    if word1.length != word2.length
        return false
    end
    word1.each_char do |ele|
        if !word2.include?(ele)
            return false
        end
    end
    return true
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
