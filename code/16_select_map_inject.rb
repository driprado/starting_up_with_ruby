########## Select Method ##########
# The Select methods allows you to filter an array of objects
# Used together with the builtin .even function, it can select only even numbers in an array:
array = [1, 2, 3, 4, 5, 6 ,7, 8 ,9, 10]
p array.select { |item| item.even?}
# Output: [2, 4, 6, 8, 10]

# One liner:
p (1..10).to_a.select { |item| item.even?} #to_a --> to array, converts (1..10) to an array
# Output: [2, 4, 6, 8, 10]

# Using & Assumes you're talking about an item in the array:
p array.select(&:even?)
# Output: [2, 4, 6, 8, 10]

# Example with string arrays

poem = %w(To see a World in a Grain of Sand And a Heaven in a Wild Flower 
Hold Infinity in the palm of your hand And Eternity in an hour) # %w transforms strings in items in an array
p poem.select { |word| word.length >2} # select in poem, words where words have more than two characters
p poem.select { |word| word.length <=2} # select in poem, words where that have less or two than two characters




########## Map Method ##########
# Map can be used with arrays, hashes & ranges to transform data
numbers = ["1", 25.5, 0, "4", 5]
p numbers.map {|num| num.to_i} #to_i -> to integer
# Output: [1, 25, 0, 4, 5]

p numbers.map(&:to_i)
# Output: [1, 25, 0, 4, 5]

# Transforming strings:
letters = ("a".."e").to_a
p letters.map {|letter| letter * 2}
# Output: ["aa", "bb", "cc", "dd", "ee"]

# Transforming arrays into hashs
p Hash[[1, 2.0, 3.5, 4.4, 5.78, 6, 7].map {|x| [x,x.to_i]}]
# Output:{1=>1, 2.0=>2, 3.5=>3, 4.4=>4, 5.78=>5, 6=>6, 7=>7} //Key=>Value

p Hash[%w(a rato roeu a roupe do rei de roma).map{|word|[word, word.length]}]
# Output: {"a"=>1, "rato"=>4, "roeu"=>4, "roupe"=>5, "do"=>2, "rei"=>3, "de"=>2, "roma"=>4}
# Generates a hash where the key is the word and the value is the word lengh




########## Inject Method ##########
# Inject is commonly used to perform arithmetic operations in arrays.
# Ex: Get the total sum of the numbers in the array:
p [2, 2, 5, 5, 10, 10].inject(&:+) # Sum each number of the array
# Output: 34 
p [2, 2, 5, 5, 10, 10].inject(&:*) # Multiply each number of the array
# Output: 10000
# In ruby operators are treated like methods