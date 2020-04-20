# Class Methods Vs Instance Methods:
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

# Calling class method
Printer.printout # Will work by calling class.method

# Calling Instance method
instance = Printer.new # Have to instanciate the class before calling the method
instance.convert_to_pdf
# alternatively you can write a one-liner
Printer.new.convert_to_pdf