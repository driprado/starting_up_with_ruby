############################################ OOP ############################################
########## Class declaration and attributes ##########
# attr_accessor creates both the READER & WRITER methods for the class
# attr_reader creates only the reader
# attr_writer creates only the writer.

class Book
    attr_accessor :year, :author, :pages
    def mymethod
        puts "This is a method I defined in Book class"
    end
end

contact = Book.new
contact.year = "1997"
contact.author = "carl sagan"
contact.pages = "300"

puts contact.author # output: carl sagan
contact.mymethod    # output: This is a method I defined in Book class




############### Initialize method ###############
# Everyting inside the method will run once you instantiate the class
class Cd
    attr_accessor :title, :year, :artist
    
    def initialize(title, year, artist, recorder = "Sony music") # 'title', 'year', 'artist' are attributes of the initialize method
        @title = title # create an instance variable '@title' with the value passed to 'title'
        @year = year
        @artist = artist
        @recorder = recorder # If not defined when instanciating, will assume the default value
    end

    def test_initialize_method
        puts @title
        puts @year
        puts @artist
        puts @recorder
    end
end

# Instantiating the class:
mycd = Cd.new("My Title", "My Year", "My Artist")
mycd.test_initialize_method

# Example two:
tropicalia = Cd.new("Tropicália: ou Panis et Circencis", "1968", "Various")
tropicalia.test_initialize_method
#output:
# My Title
# My Year
# My Artist
# Sony music
# Tropicália: ou Panis et Circencis
# 1968
# Various
# Sony music




############### Naming arguments ###############
# This improves code readability
class Car
    attr_accessor :model, :color, :year

    def initialize(car_model: model, car_color: color, car_year: "2020")
        @model = car_model
        @color = car_color
        @year = car_year
    end

    def test_initializer
        puts @model
        puts @color
        puts @year
    end
end

mycar = Car.new(car_model: "Tesla Model X", car_color: "Space Grey", car_year: "2019") # car_year value should override default value in initialize
mycar.test_initializer
# output:
# Tesla Model X
# Space Grey
# 2020




############### OOP Inheritance ###############
class Oviparous
    attr_accessor :name, :species

    def initialize(animal_name: name, animal_species: species)
        @name = animal_name
        @species = animal_species
    end

    def lay_egg
        puts "#{name} layed an egg"
    end

    #private     # Private methods can only be used in the class they are defined in. if not commented fails the rest fo the code
        def reproduce
            puts "#{name} reproduced"
        end
end

class Bird < Oviparous # Inherits from Oviparous
    def sing
        puts "lalalalalalalla"
    end
end

blackbird = Bird.new(animal_name: "blackbird", animal_species: "true trush")
blackbird.lay_egg # Utilizing a method from the mother class
blackbird.sing # Utilizing a method from the bird (child) class
# output: 
# blackbird layed an egg
# lalalalalalalla
blackbird.reproduce
# output:
# `<main>': private method `reproduce' called for #<Bird:0x00007fdea3057e48> (NoMethodError)




############### OOP Polymorphism ###############
# When there are two of the same method in the child and parent class
# and the child class alters the behaviour of the parent class
# Example 1
class Biped
    attr_accessor :name, :species

    def initialize(animal_name: name, animal_species: species)
        @name = animal_name
        @species = animal_species
    end

    def walk # Same method name as the child class
        puts "#{species} #{name} is walking in the savana"
    end
end

class Human < Biped
    def walk # Same method name as the parent class
        puts "#{name} is walking in the sidewalk"
    end
end

class Kangaroo < Biped
    def walk # Same method name as the parent class 
        super # Will run the method from the parent class if there's one with the same name
        puts "#{name} the #{species} is jumping in the outback"
    end
end

jane = Human.new(animal_name: "Jane", animal_species: "Human")
jane.walk # It will use the local class method instead of the parent class
# output: Jane is walking in the sidewalk

skippy = Kangaroo.new(animal_name: "Skippy", animal_species: "Kangaroo")
skippy.walk
# output: both melthods ran with super
# Kangaroo Skippy is walking in the savana
# Skippy the Kangaroo is jumping in the outback



