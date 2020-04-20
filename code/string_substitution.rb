tobe = "To be or not to be, that is the question"

# Example 1
p tobe.sub "be", "kill" # Substitutes the string 'be' for 'kill' in it's first occurence

# Example 2
p tobe.gsub "be", "kill" # substitutes the string 'be' for 'kill' in all its occurences

# By printing again, we can see that the string's value is not updated with the substitutions
p tobe


# Example 3
# To update the value of the string after substution, use !:
tobe.gsub! "be", "kill"
p tobe

