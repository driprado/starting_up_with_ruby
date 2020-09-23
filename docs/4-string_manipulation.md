# 4 String Manipulation  

## 4.1 String Interpolation  

Passing variable values into printing statements:
Ex: [`4_string_interpolation.rb`](../code/4_string_interpolation.rb)

```bash
# Example 1

first_programmer = "Ada Lovelace"
puts "The first programmer was #{first_programmer}"
```  

We use the gets method to get what is type into the sell

```bash
# Example 2

puts "Enter your name"
name = gets
puts "Hi #{name} how are you?"

# Output:  
Enter your name  
lala  
Hi lala
 how are you?
```

Gets automatically adds a new line after input, if you want your hole print statement to be in the same line, use `get.chomp`

```bash
# Example 3

puts "Enter your name"
name = gets.chomp
puts "Hi #{name} how are you?"

Output:  
Enter your name  
lala  
Hi lala how are you?
```

Evaluations can be made inside the curly brackets { }:  

```bash
# Example 4

puts "Anna had 6 apples, and gave 1 to Dan, now she has #{6 - 1} apples"

# Output:  
Anna had 6 apples, and gave 1 to Dan, now she has 5 apples  
```  

## 4.2 String Methods

There are several builtin methods to manipulate strings in Ruby, the most common are:  

### 4.2.1 upcase

Ex: [`4_string_methods.rb`](../code/4_string_methods.rb)

```bash
# Example 1

puts "driprado".upcase

#Output:  
DRIPRADO  
```

### 4.2.2 downcase  

```bash
# Example 2

puts "DRIPRADO".downcase

# Output:
driprado
```

### 4.2.3 swapcase

```bash
# Example 3
puts "DriPrado".swapcase

# Output:
dRIpRADO  
```

### 4.2.3 reverse

```bash
# Example 4

puts "Driprado".reverse

# Output:
odarpirD  
```

### 4.2.3 combining methods

```bash
# Example 5
puts "Driprado".reverse.upcase

# Output:
ODARPIRD  
```

### 4.2.4 split - converts strings into arrays

```bash
`# Example 6`
tobe = "to be or not to be that is the question"
p tobe.split

# Output:
["to", "be", "or", "not", "to", "be", "that", "is", "the", "question"]  
```

```bash
p tobe.split.size # Print the number of items in the array

# Output:
10  
```  

```bash
p tobe.split(//).size # Print how many letters in array

# Output:
39
```  

```bash
p tobe.split(//)    # Split array by letter instead fo word

# Output:
["t", "o", " ", "b", "e", " ", "o", "r", " ", "n", "o", "t", " ", "t", "o", " ", "b", "e", " ", "t", "h", "a", "t", " ", "i", "s", " ", "t", "h", "e", " ", "q", "u", "e", "s", "t", "i", "o", "n"]

```

## 4.3 String Substitution  

`.sub` and `.gsub` methods can be used for string substitution:

### 4.3.1 sub

Substitutes the first occuence of a string  
Ex: `4_string_substitution.rb`

```bash
# Example 1
tobe = "To be or not to be, that is the question"

p tobe.sub "be", "kill" # Substitutes the string 'be' for 'kill' in it's first occurence

# Output:
"To kill or not to be, that is the question"
```

### 4.3.2 gsub

Substitutes the all the occuences of a string  
Ex: `4_string_substitution.rb`

```bash
# Example 2
tobe = "To be or not to be, that is the question"

p tobe.gsub "be", "kill" # substitutes the string 'be' for 'kill' in all its occurences

# Output:
"To kill or not to kill, that is the question"
```

### 4.3.3 Permanently substitute string

Substitutes the all the occuences of a string  
Ex: `4_string_substitution.rb`

```bash
# Example 3
tobe = "To be or not to be, that is the question"
p tobe.gsub "be", "kill" # substitutes the string 'be' for 'kill' in all its occurences

# Output:
"To kill or not to kill, that is the question"  
```

If we print the original variable that holds the string, we see it was not changed:  

```bash
p tobe

# Output:  "To be or not to be, that is the question"  
```

To change permanently this variable use `!`:  

```bash
tobe.gsub! "be", "kill"
p tobe

# Output:
"To kill or not to kill, that is the question"
```
