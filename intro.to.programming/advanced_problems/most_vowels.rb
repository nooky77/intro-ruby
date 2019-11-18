# Write a method most_vowels that takes in a sentence string and returns
# the word of the sentence that contains the most vowels.

def most_vowels(sentence)
    hash = Hash.new()
    sentence.split().each {|word| hash[word] = count_vowels(word)}
    most = hash.sort_by {|k, v| v}
    print most[-1][0]
end

def count_vowels(str)
    vowels = 'aeiou'
    count = 0
    str.each_char do |char|
        if vowels.include?(char)
            count += 1
        end
    end
    return count
end

print most_vowels("what a wonderful life") #=> "wonderful"
puts
