# Write a method yell(words) that takes in an array of words and returns
# a new array where every word from the original array has an exclamation
# point after it.

def yell(words)
    i = 0
    new_words = []
    while i < words.length
        new_words << words[i] + '!'
        i += 1
    end
    return new_words
end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
puts
