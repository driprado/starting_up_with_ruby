########## Push ##########
# "Push" items into arrays
# Ex:

groceries = ["sugar", "salt", "avocado"]
groceries.push("banana", "bread")
p groceries
# output: ["sugar", "salt", "avocado", "banana", "bread"]
# They'll be pushed into the last positions

groceries.pop # Pop always pop the last element of the array
p groceries
# output: ["sugar", "salt", "avocado", "banana"]

x = groceries.pop # pop saves the temporarily the popped element
p x
# output: "banana"