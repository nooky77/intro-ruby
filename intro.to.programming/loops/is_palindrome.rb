# Write a method is_palindrome(word) that takes in a string word and returns
# the true if the word is a palindrome, false otherwise. A palindrome is a
# word that is spelled the same forwards and backwards.

def is_palindrome(word)
    i = 0
    reversed = ""
    while i < word.length
        reversed = word[i] + reversed
        i += 1
    end
    return reversed == word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
