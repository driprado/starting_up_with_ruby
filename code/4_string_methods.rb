########## String Methods ##########

# Example  1 - upcase
puts "driprado".upcase

## Example  2 - downcase
puts "DRIPRADO".downcase

## Example  3 - swapcase
puts "DriPrado".swapcase

## Example  4 - reverse
puts "Driprado".reverse # Reverse strings positions

## Example  5 - combined
puts "Driprado".reverse.upcase # Reverse AND upcase string

## Example 6 - split
# converts strings into arrays:
tobe = "to be or not to be that is the question"
p tobe.split

# Printing the number of items in this string/array
p tobe.split.size

# Printing how many letters are there in the array:
p tobe.split(//).size

# Printing all the letters as items in the array:
p tobe.split(//)
