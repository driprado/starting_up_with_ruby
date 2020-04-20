########## Arrays ##########

# Initialise an array:
p y = Array.new
# Output: []
 


# Add elements to array
y[0] = "one" # Adds the value "one" in the position 0 of the array
p y
# Output: ["one"]
y[9] = "ten"
p y
# Output: ["one", nil, nil, nil, nil, nil, nil, nil, nil, "ten"] # it fills empty values with nill
 


# Iterating through items
y.each {|i| puts i}



# Delete elements from arrays
x = ["abcdef", 1, 2, 3, 4, 5.5]
p x.length
p x
# Output: 6 ["abcdef", 1, 2, 3, 4, 5.5]

x.delete(3)
p x.length
p x
# Output: 5 ["abcdef", 1, 2, 4, 5.5]

x.delete_at(4) #Deleting by position
p x
# Output: ["abcdef", 1, 2, 4]

y = [10, 9, 5, 4, 3, 2, 1]
y.delete_if {|element| element > 5} # Delete element if element is greater then 5
p y
# output: [5, 4, 3, 2, 1]
