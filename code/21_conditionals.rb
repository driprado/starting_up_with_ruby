########## Conditions ##########
## Basic if-else statement with comparisson in ruby
x = 10
y = 10

if x == y                           # Use `==` to compare two values
    puts "x is the same as y"
else
    puts "x is NOT the same as y"
end




## Unless condition
# Example 1
directory = "hi"

unless directory == "false"
    puts directory
end
# output: hi

# Example 2
variable = "x"
unless variable.empty?
    puts variable
end
# output: x # or empty in case the variable is empty

# Example 3
names = ["ana", "rita", "joana", "carolina"]
names.each {|name| puts name} unless names.empty?
# output: unless array is empty:
# ana
# rita
# joana
# carolina




## Multiple if statements
# Example 1
a = 10
b = 9

if a == b
    puts "a is equal to b"
elsif a < b
    puts "a is less than b"
elsif a > b
    puts "a is greater than b"
else
    puts "wtf!?"
end
# As soon as ruby finds a statement that is true, it bypass all the other statemts, even if they are also true.




## Compound conditionals
# And conditional:
x = 10
y = 10
z = 100

if x == y && x == z
    puts "both conditions are true"
elsif x == y || x == z
    puts "at least one of the conditions is true"
end
# output: at least one of the conditions is true


