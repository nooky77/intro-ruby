# Print a line
    puts "Hello World" #prints data with formatting, and new line
    print "Hello World" # prints data with minimal formatting, no new line
    p "Hello World" #prints data with formatting, new line and type of data

# Comment a line
    #This is a comment

# Boolean
    ! (not)
    && (and)
    || (or)

# Data type conversion
    data.to_s # Conversion to sting
    data.to_i # Conversion to integers
    data.to f # Conversion to float
    data.split # Conversion to array

# Variable
    myVar = value #work with all datatypes
    myVar += 1 #increment variable by 1, works with (+, -, *, /)
    myVar.split(keyword) # Split string into array via keyword
    myVar.split(key).join(key) # Remplace key by other key in str

# Concatenate
    puts "Hello " + "World!" #concatenate 2 strings

# Index and length
    puts "Hello".length #print length of string
    puts "Hello"[i] #acces index i in sting

# Method / function
    def functionName(parameter) # Defining a method
        instruction
        return value # return value if needed
    end
    functionName() # Calling this method

# Ternary operator
    expression ? true : false

# Array, check Array Cheat Sheet for examples
    myArr = [] # Create empty array
    myArr << "value" # Push one value to end array
    myArr[i] = "value" # Replace myarr[i] with other value
    maArr[-i] # Access index from last element starting at 1
    myArr.push() # Push multiple value to end array, evaluates to array
    myArr.pop() # Remove last element, evaluates to element removed
    myArr.unshift() # Adds element to front array, evaluates to array
    myArr.shift() # Remove first element array, evaluates to element removed
    myArr.index(ele) # Evaluates to the index where ele is found
    myArr.include?(ele) # Evaluates to a boolean indicating if ele is found
    myArr.reverse() # Evaluates to new reverse version of array or string
    myArr.reverse()! # Reverses array/string in place
    myArr[startIdx..endIdx] # Grabs element from startIdx to endIdx (inclusive)
    myArr[startIdx...endIdx] # Grabs element from startIdx to endIdx (excluding endIdx)
    myArr.join(keyword) # Join array into str via keyword

#  Enumerables Methods
    # Set of items and a method to loop over each of them.
    # array
        myArr.each { |placeholder| instruction} # for single instruction
        myArr.each do |placeholder| # for multiple instruction
            instruction
        end
        myArr.each_with_index { |placeholder, index| instruction}
        (start..end).each # iterate from start to end (inclusive)
        (start...end).each # iterate from start to end (exclusive end)
        num.times {instruction} # iterate num times
    # strings
        myStr.each { |placeholder| instruction} # for single instruction
        myStr.each do |placeholder| # for multiple instruction
            instruction
        end
        myStr.each_char.with_index { |placeholder, index| instruction}
