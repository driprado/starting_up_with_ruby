# 3 Printing in Ruby  
There are 3 ways to print in ruby; `print`, `puts` and `p`

## 3.1 Print statement
Does not add a new line in the end of the statement  
Ex: [`3_printing.rb`](../code/3_printing.rb)

```
print "This is a tring"
print ["a", "b", "c"]
print [1, 2, 3]
```
*Output:*  
`This is a tring["a", "b", "c"][1, 2, 3]%`  


## 3.2 Puts statement
Add a new line by default in the end of the statement  
Iterate through arrays   
Ex: [`3_printing.rb`](../code/3_printing.rb)
```
puts "This is a tring"
puts ["a", "b", "c"]
puts [1, 2, 3]
```
*Output*
```
This is a tring
a
b
c
1
2
3
``` 

## 3.2 P statement
It also adds new line by default in the end of the statement.  
Gives a better indicatin of types that are being printed.  
Ex: [`3_printing.rb`](../code/3_printing.rb)

```
p "This is a tring"
p ["a", "b", "c"]
p [1, 2, 3]
```  

*Output:*  
```
"This is a tring"  
["a", "b", "c"]  
[1, 2, 3]
```
