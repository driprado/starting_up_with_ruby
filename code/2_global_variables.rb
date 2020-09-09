## Global Variables
5.times do
    $x = 10
end
p $x    # prints x outside the loop, since '$' makes the variable global
