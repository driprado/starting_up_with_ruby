########## Each Iterator ##########
array = ["one", "two", "three", "four", "five"]

array.each do |item|
    puts item
end
# Output:
# one
# two
# three
# four
# five



# One liner:
array.each { |item| puts item}
# Output:
# one
# two
# three
# four
# five




########## Nested iterators ##########
employees_addresses = {
    "John Doe" => {
        "Street Number" => "123",
        "Street Name"   => "Walt Disney",
        "Postcode"      => "3423",
        "State"         => "NSW",
        "Country"       => "USA",
    },
    "Jane Done" => {
        "Street Number" => "321",
        "Street Name"   => "Bill Gates",
        "Postcode"      => "4323",
        "State"         => "VIC",
        "Country"       => "Australia",
    }
}

# Printout both employees and addresses:
employees_addresses.each do | address |
    puts address
end
# Output:
# John Doe
# {"Street Number"=>"123", "Street Name"=>"Walt Disney", "Postcode"=>"3423", "State"=>"NSW", "Country"=>"USA"}
# Jane Done
# {"Street Number"=>"321", "Street Name"=>"Bill Gates", "Postcode"=>"4323", "State"=>"VIC", "Country"=>"Australia"}

# Iterate throull each item of the nested hash(dictionary)
employees_addresses.each do | employee, address |
    puts "Employee Name: #{employee}"
    address.each do | key, value |
        puts "#{key} : #{value}"
    end
end
# Output:
# Employee Name: John Doe
# Street Number : 123
# Street Name : Walt Disney
# Postcode : 3423
# State : NSW
# Country : USA
# Employee Name: Jane Done
# Street Number : 321
# Street Name : Bill Gates
# Postcode : 4323
# State : VIC
# Country : Australia

