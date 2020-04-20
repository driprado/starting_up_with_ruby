# Ruby blocks

# Ruby blocks are small functions that can be passed into methods.
# The arguments are defininf between two pipes.
# Blocks are enclosed between do / end or {}

# {}
[1,2,3].each { |num| puts num}

# do / end
[1,2,3].each do |num|
    puts num
end



# Lambdas
# Lambdas are a way to define blocks and its parameters with some special syntax
# Lambdas cab be saved into variables for later use.
# Ex:
my_lambda = -> {puts "This is a lambda"}
# You need to call the lambda to run it
my_lambda.call

#Lambdas can take arguments
times_two = ->(x) { x * 2 }
times_two.call(10)



# Proc
# Procs act more like objects, they are also an encapsulation of a block of code.
# Ex:
addition = Proc.new do | x, y |
    p x + y
end
addition[ 2, 2 ]

# One liner
full_name = Proc.new { |first, last| first + " " + last }
p full_name["Adria", "Prado"]

