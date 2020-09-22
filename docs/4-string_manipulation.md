# 4 String Manipulation  
<br/><br/>

## 4.1 String Interpolation  

Passing variable values into printing statements:  
Ex: [`4_string_interpolation.rb`](../code/4_string_interpolation)   

```
# Example 1

first_programmer = "Ada Lovelace"
puts "The first programmer was #{first_programmer}"
```  

We use the gets method to get what is type into the sell   

Ex: [`4_string_interpolation.rb`](../code/4_string_interpolation)   
```
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

Ex: [`4_string_interpolation.rb`](../code/4_string_interpolation) 
```
# Example 3

puts "Enter your name"
name = gets.chomp
puts "Hi #{name} how are you?"

Output:  
Enter your name  
lala  
Hi lala how are you?    
```


### Evaluations can be made inside the curly brackets { }:  
Ex: [`4_string_interpolation.rb`](../code/4_string_interpolation) 
```
# Example 4

puts "Anna had 6 apples, and gave 1 to Dan, now she has #{6 - 1} apples

# Output:  
Anna had 6 apples, and gave 1 to Dan, now she has 5 apples  
```

<br/><br/>
## 4.2 String Methods
There are several builtin methods to manipulate strings in Ruby, the most common are:  

### 4.2.1 upcase
Ex: [`4_string_methods.rb`](../code/4_string_methods.rb) 

```
# Example 1

puts "driprado".upcase

#Output:  
DRIPRADO  
```


### 4.2.2 downcase  
Ex: [`4_string_methods.rb`](../code/4_string_methods.rb) 
```
# Example 2

puts "DRIPRADO".downcase

# Output:
driprado
```


### 4.2.3 swapcase
Ex: [`4_string_methods.rb`](../code/4_string_methods.rb) 
```
# Example 3
puts "DriPrado".swapcase

# Output:
dRIpRADO  
```


### 4.2.3 reverse
Ex: [`4_string_methods.rb`](../code/4_string_methods.rb) 
```
# Example 4

puts "Driprado".reverse

# Output:
odarpirD  
```


### 4.2.3 combining methods
Ex: [`4_string_methods.rb`](../code/4_string_methods.rb) 
```
# Example 5
puts "Driprado".reverse.upcase

# Output:
ODARPIRD  
```


### 4.2.4 split - converts strings into arrays
Ex: [`4_string_methods.rb`](../code/4_string_methods.rb)  
`# Example 6`
```
tobe = "to be or not to be that is the question"
p tobe.split

# Output: ["to", "be", "or", "not", "to", "be", "that", "is", "the", "question"]  
```


```
p tobe.split.size # Print the number of items in the array

# Output: 10  
```  


```
p tobe.split(//).size # Print how many letters in array

# Output: 39
```  


```
p tobe.split(//)    # Split array by letter instead fo word

# Output: ["t", "o", " ", "b", "e", " ", "o", "r", " ", "n", "o", "t", " ", "t", "o", " ", "b", "e", " ", "t", "h", "a", "t", " ", "i", "s", " ", "t", "h", "e", " ", "q", "u", "e", "s", "t", "i", "o", "n"]

```



<br/><br/>
## 4.3 String Substitution  
`.sub` and `.gsub` methods can be used for string substitution:

### 4.3.1 sub
Substitutes the first occuence of a string  
Ex: `string_substitution.rb` # Example 1
```
tobe = "To be or not to be, that is the question"

p tobe.sub "be", "kill" # Substitutes the string 'be' for 'kill' in it's first occurence
```
*Output:*  "To kill or not to be, that is the question"


### 4.3.2 gsub
Substitutes the all the occuences of a string  
Ex: `string_substitution.rb` # Example 2
```
tobe = "To be or not to be, that is the question"

p tobe.gsub "be", "kill" # substitutes the string 'be' for 'kill' in all its occurences
```
*Output:*  "To kill or not to kill, that is the question"


### 4.3.3 Permanently substitute string:
Substitutes the all the occuences of a string  
Ex: `string_substitution.rb` # Example 3
```
tobe = "To be or not to be, that is the question"
p tobe.gsub "be", "kill" # substitutes the string 'be' for 'kill' in all its occurences
```
*Output:*  "To kill or not to kill, that is the question"  
If we print the original variable that holds the string, we see it was not changed:  
```
p tobe
```
*Output:*  "To be or not to be, that is the question"  
<br/>

To change permanently this variable use `!`:  
```
tobe.gsub! "be", "kill"
p tobe
```
*Output:*  "To kill or not to kill, that is the question"  