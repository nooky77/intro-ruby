# For simplicity, we'll consider an email valid when it satisfies all
# of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
	alphabet = 'abcdefghijklmnopqrstuvwxyz'
	parts = str.split('@')
	if parts.length != 2
		return false
	end
	part1 = parts[0]
	part2 = parts[1]
	part1.each_char do | char |
		if !alphabet.include?(char)
			return false
		end
	end
	if part2.count('.') != 1
		return false
	end
	return true
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
