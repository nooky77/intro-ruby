# Write a method vowel_cipher that takes in a string and returns a new string
# where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(str)
    new_str = ''
    vowel = 'aeiou'

    str.each_char do |char|
        if vowel.include?(char)
            old_idx = vowel.index(char)
            new_idx = (old_idx + 1) % vowel.length
            new_str += vowel[new_idx]
        else
            new_str += char
        end
    end

    return new_str
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
