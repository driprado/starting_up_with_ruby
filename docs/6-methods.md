
# Methods Definition and Declaration

## Method definition

Ex: [`6_method_definition_declaration.rb`](../code/6_method_definition_declaration.rb)

```ruby
def great_technologists_list
    puts ["Marissa Mayer", "Katherine Johnson", "Margaret  Hamilton"]
end

# Output:
None, you have to declare the method to call it.
```

## Method declaration

```ruby
great_technologists_list

# Output:

Marissa Mayer
Katherine Johnson
Margaret  Hamilton
```

Ruby functions return values from methods even without the word `return`  
But if the word return exists within a method, the compiler stops there.  

## Class methods vs Instance methods

Ex: [`6_classmethod_instancemethod.rb`](../code/6_classmethod_instancemethod.rb)

```ruby
class Printer
    # Class method
    def self.printout
        p "File printed"
    end

    # Instance method
    def convert_to_pdf
        p "File converted to pdf"
    end
end


# Calling class methods: class.method
Printer.printout

# Calling instance methods: instanciate the class before calling the method
instance = Printer.new 
instance.convert_to_pdf

# alternatively you can write a one-liner
Printer.new.convert_to_pdf
```
