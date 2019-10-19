# Write a method format_name that takes in a name string and returns
# the name properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

# def format_name(str)
#     names = str.split(' ')
#     name_arr = []
#     names.each do | name |
#         temp = ''
#         name.each_char.with_index do | char, index |
#             if index == 0
#                 temp += char.upcase()
#             else
#                 temp += char.downcase()
#             end
#         end
#         name_arr << temp
#     end
#     new_names = name_arr.join(' ')
#     return new_names
# end

# simplified version

def format_name(str)
    names = str.split()
    arr = []
    names.each do | name |
        arr << name[0].upcase() + name[1..-1].downcase()
    end
    new_names = arr.join(' ')
    return new_names
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
