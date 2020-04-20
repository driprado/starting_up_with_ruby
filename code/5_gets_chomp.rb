# Getting input from console:

# Gets
puts "Enter your name: "
name = gets
puts "your name is : #{name}" 

# Every input from console keyboard add a new line by the end of it,
# so when matching input data against other variables you shound account 
# for the \n at the end of each input:

puts "Enter your password"
password = gets
p password
if password == "1234"
    p true
else
    p false
end
# The result would be false, bacause the input from user would be 1234\n

# Removing \n from console inputs:
# chomp
puts "Enter your password"
password = gets.chomp
p password
if password == "1234"
    p true
else
    p false
end