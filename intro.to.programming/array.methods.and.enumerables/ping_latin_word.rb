# Write a method pig_latin_word that takes in a word string and translates
# the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first
# vowel to the end of the word and add 'ay'

def pig_latin_word(word)
    vowel = 'aeiou'
    if vowel.include?(word[0])
        word = word + 'yay'
        return word
    else
        word.each_char.with_index do | char, index |
            if vowel.include?(char)
                word = word[index..-1] + word[0...index] + 'ay'
                return word
            end
        end
    end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
