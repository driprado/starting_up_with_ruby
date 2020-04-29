# 2 Variables
## 2.1 Local Variables
Exists only inside the loop / method / function ...

Ex: [`local_variables.rb`](../code/2_local_variables.rb)  

```
5.times do  # This is a loop
    x = 10
    p x     # print 10 five times
end
p x         # Error, x does not exists outside the loop
```

## 2.2 Global Variables  
Is visible thruout the code, even outside the loop / method / function  
Ex: `global_variables.rb`

```
5.times do
    $x = 10
end
p $x    # prints x outside the loop, since '$' makes the variable global  
```  

## 2.3 Instance Variables
An instance variable starts with '@'.  
Its scope is confined to whatever object self refers to. Two different objects, even if they belong to the same class, are allowed to have different values for their instance variables. From outside the object, instance variables cannot be altered or even observed

## 2.4 Constant Variables
A Constant variable value is supposed to remain the same for the duration of the program. The Ruby interpreter does enforce this, but it does issue a warning if a program changes the value of a constant.  
Ex: `constand_variables.rb`

```
CONSTANT_X = 1
CONSTANT_X = 2  

# Output:  
constant_variables.rb:2: warning: already initialized constant CONSTANT_X
constant_variables.rb:1: warning: previous definition of CONSTANT_X was here
```
