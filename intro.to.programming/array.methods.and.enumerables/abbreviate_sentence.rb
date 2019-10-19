# Write a method abbreviate_sentence that takes in a sentence string and
# returns a new sentence where every word longer than 4 characters has
# all of it's vowels removed.

#  my version
# def abbreviate_sentence(sent)
#     arr = []
#     vowels = ['a', 'e', 'i', 'o', 'u']
#     words = sent.split()
#     new = ""
#     words.each do | word |
#         if word.length > 4
#             temp = word
#             vowels.each do | char |
#                 if temp.include?(char)
#                     temp = temp.split(char).join('')
#                 end
#             end
#             arr << temp
#         else
#             arr << word
#         end
#     end
#     return new = arr.join(' ')
# end

# simplified version

def abbreviate_sentence(sent)
    words = sent.split(" ")
    new_str = ""
    arr = []
    words.each do | word |
        if word.length > 4
            arr << abbreviate_word(word)
        else
            arr << word
        end
    end
    new_str = arr.join(' ')
    return new_str
end

def abbreviate_word(word)
    new_word = ""
    vowels = "aeiou"
    word.each_char do | char |
        if !vowels.include?(char)
            new_word += char
        end
    end
    return new_word
end


print abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts
print abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
puts
