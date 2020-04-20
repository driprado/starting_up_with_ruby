#################### Working With Files ####################



########## File methods ##########
## Open
# r - read
# a - append
# w - write
# w+ - read and write
# a+ - read and append
# r+ - update: read and write



########## Create new file and Write to it ##########
### Example 1
File.open("/tmp/myfile.txt", 'w+') {|f| f.write("This is a test file")}
# cat /tmp/myfile.txt 
# This is a test file%                

### Example 2
players_file = File.new("/tmp/my_players.txt", 'w+')
players_file.puts("pele, marta, romario, ronaldo")
players_file.close

# cat /tmp/my_players.txt
# pele, marta, romario, ronaldo



########## Reading and Manipulating files ########## 
# Example one
players_file = File.read("/tmp/my_players.txt")
p players_file.split(',') # Transforming into array
# output: ["pele", " marta", " romario", " ronaldo\n"]


# Example two
# Creates files and it's contents
players_brazil = File.new("/tmp/brazil_players.txt", 'w+')
players_brazil.puts("pele, ronaldo, romario, marta")
players_brazil.close

players_germany = File.new("/tmp/germany_players.txt", 'w+')
players_germany.puts("klopp, muller, podolski, klose")
players_germany.close

# Reads files and it's contents
brazil = File.read("/tmp/brazil_players.txt")
germany = File.read("/tmp/germany_players.txt")
puts brazil
puts germany

p brazil.split(', ') + germany.split(', ')
#output: ["pele", "ronaldo", "romario", "marta\n", "klopp", "muller", "podolski", "klose\n"]



########### Deleting Files ###########
File.delete("/tmp/brazil_players.txt")
File.delete("/tmp/germany_players.txt")




########### Appending to Files ###########
# Create file
server_log = File.new("/tmp/fake_server.log.txt", 'w+')
server_log.close

# Append to file:
10.times do
    sleep 3
    puts "logging"
    File.open("/tmp/fake_server.log.txt", 'a') {|file| file.puts "Server started at: #{Time.new}"} # Opens file and append timestamp 10 times
end
# output:
# logging
# logging
# logging
# logging
# logging
# logging
# logging
# logging
# logging
# logging
# cat /tmp/fake_server.log.txt
# Server started at: 2020-04-14 19:17:11 +1000
# Server started at: 2020-04-14 19:17:14 +1000
# Server started at: 2020-04-14 19:17:17 +1000
# Server started at: 2020-04-14 19:17:20 +1000
# Server started at: 2020-04-14 19:17:23 +1000
# Server started at: 2020-04-14 19:17:26 +1000
# Server started at: 2020-04-14 19:17:29 +1000
# Server started at: 2020-04-14 19:17:32 +1000
# Server started at: 2020-04-14 19:17:35 +1000
# Server started at: 2020-04-14 19:17:38 +1000

