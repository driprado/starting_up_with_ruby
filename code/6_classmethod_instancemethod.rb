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
Printer.printout

# Calling Instance method
instance = Printer.new 
instance.convert_to_pdf

# alternatively you can write a one-liner
Printer.new.convert_to_pdf