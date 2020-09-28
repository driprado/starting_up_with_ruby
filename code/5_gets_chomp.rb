## Example 1
puts "Enter your name: "
name = gets
puts "your name is : #{name}" 


## Example 2
puts "Enter your password"
password = gets
p password
if password == "1234"
    p true
else
    p false
end


## Example 3
puts "Enter your password"
password = gets.chomp
p password
if password == "1234"
    p true
else
    p false
end