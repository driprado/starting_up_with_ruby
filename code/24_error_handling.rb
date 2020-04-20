#################### Errror Handling ####################
########## Basic Syntax ##########

## No error handling:
# puts 5/0
# output:
# Traceback (most recent call last):
#         1: from 24_error_handling.rb:4:in `<main>'
# 24_error_handling.rb:4:in `/': divided by 0 (ZeroDivisionError)



## Some error handling
begin
    puts 5/0
rescue
    puts "Can't devide by 0"
end
# output: Can't devide by 0



## Better Error handling
# Capture specific types of errors
begin
    puts 1/0
rescue ZeroDivisionError => error # Capture only ZeroDivisionError type of errors and save the error into a variable
    puts "An ERROR has ocurred: #{error}" # prints your message and error
end
# output: An ERROR has ocurred: divided by 0

# Catching standard error:
begin
    puts nil + 10
rescue StandardError => error
    puts "ERROR: #{error}"
end



## Creating an error logger method
def error_logger(error)
    File.open('error_log', 'a') do |file|
        file.puts error
    end
end

begin
    puts nil + 0
rescue StandardError => error
    error_logger("ERROR: #{error} at #{Time.now}")
end
# cat error_log
# ERROR: undefined method `+' for nil:NilClass at 2020-04-14 19:56:37 +1000

