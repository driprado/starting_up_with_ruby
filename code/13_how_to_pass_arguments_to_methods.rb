## Basic syntax for passing arguments to functions:
def addition_1(x, y)
    puts x+y
end
addition_1(2,2)



## No parenthesis!
def addition_2 x, y
    puts x+y
end
addition_2 2,2



## Named arguments
def addition_3 augend:, addend:
    puts augend + addend
end
addition_3 augend: 2, addend: 2

def naming title:, last:, first:
    p title
    p last 
    p first
end
naming title: "Ms", last: "Prado", first: "Adria" # The order in which the arguments are passed matters



## Splat Arguments
def groceries *items #Will take as many arguments as passed
    puts items
end
groceries 'banana', 'apple', 'chocolate', 'wine' # Arguments get treated as an array

# Key:Value Splat Arguments
def groceries_quatity **grocery_list
    grocery_list.each do |item, quantity|
        puts "Item: #{item}"
        puts "Quantity: #{quantity}"
        puts "\n"
    end
end

my_groceries = {
    "Banana": "4",
    "Apples": "2",
    "Chocolates": "10",
    "Wine": "12"
}
groceries_quatity my_groceries
