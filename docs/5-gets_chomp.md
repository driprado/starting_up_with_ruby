# Gets and Chomp

To take input from keyboard as strings and add it to a variable we can use the gets method.  

## gets

Ex: [`5_gets_chomp.rb`](../code/5_gets_chomp.rb)

```bash
# Example 1

puts "Enter your name: "
name = gets
puts "your name is : #{name}"

# Output:
your name is : Adria
```

Gets adds a new line at the end of the input string, so when matching input data against other variables you shound account for the `\n` at the end of each input.  

```bash
# Example 2

puts "Enter your password"
password = gets
p password
if password == "1234"
    p true
else
    p false
end
```

Even if you type the correct password, the result would be false, bacause the input from user would be 1234\n  

## chomp

To clear the `\n` at the end of the string we can use `.chomp`  

```bash
# Example 3

puts "Enter your password"
password = gets.chomp
p password
if password == "1234"
    p true
else
    p false
end
```
