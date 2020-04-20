########## Hash ##########
# Hash is a dictionary like structure with key:value pairs

##### Creating a hash #####
goals_for_brazil = {
    pele:     "77",
    romário:  "71",
    ronaldo:  "62",
    marta:    "108",
}
# puts goals_for_brazil
# output: {:pelé=>"77", :romário=>"71", :ronaldo=>"62", :marta=>"108"}

# The arrow syntax also works:
# goals_for_brazil = {
#     "pele"    =>     "77",
#     "romário" =>     "71",
#     "ronaldo" =>     "62",
#     "marta"   =>    "108",
# }
# puts goals_for_brazil
# output: {"pelé"=>"77", "romário"=>"71", "ronaldo"=>"62", "marta"=>"108"}




##### Grabbing values inside hash #####
p goals_for_brazil["marta"]
#output: "108"




##### Deleting from hashes #####
goals_for_brazil.delete(:ronaldo)
p goals_for_brazil
# output: {:pele=>"77", :romário=>"71", :marta=>"108"}




##### Iterating through hashs #####
# Iterating through keys
goals_for_brazil.each_key {|key| puts key}
# output:
# pele
# romário
# marta

# Print all keys:
p goals_for_brazil.keys
# output: [:pele, :romário, :marta, :ronaldo]
# This is different from iterating throught all keys

# Iterating through values
goals_for_brazil.each_value {|value|puts value}
# output:
# 77
# 71
# 108

# Print all values:
p goals_for_brazil.values
# output: ["77", "71", "108", 62]
# This is different from iterating throught all keys, but can possibly be used in a for loop




##### Adding new element to hash #####
goals_for_brazil[:ronaldo] = 62
p goals_for_brazil
# output: {:pele=>"77", :romário=>"71", :marta=>"108", :ronaldo=>62}




##### Other hash handy funcitons #####
# Invert
p goals_for_brazil.invert # keys become values, values become keys
# output: {"77"=>:pele, "71"=>:romário, "108"=>:marta, 62=>:ronaldo}

# Merge
goals_for_usa = { jozy: "42", michael: "17", christian: "14", jordan: "10"}
p goals_for_brazil.merge goals_for_usa
# output: {:pele=>"77", :romário=>"71", :marta=>"108", :ronaldo=>62, :jozy=>"42", :michael=>"17", :christian=>"14", :jordan=>"10"}

# Transgorm hash into array
p goals_for_brazil.to_a 
# output: [[:pele, "77"], [:romário, "71"], [:marta, "108"], [:ronaldo, 62]] 
# creates arrays inside array