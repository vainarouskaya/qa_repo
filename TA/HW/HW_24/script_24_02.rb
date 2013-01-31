BEGIN {

     name = "Iryna Vainarouskaya"

     description = "script_24_2: Define the Class which will create a right triangle"

 

     puts "#################################### "

     puts "Author \s\s\s\s\s : " + name

     puts "Date \s\s\s\s\s\s\s\s: " + Time.now.to_s[0 .. 18]

     puts ""

     puts "Ruby version : " + RUBY_VERSION

     puts "Script \s\s\s\s\s\s: " + __FILE__.chop.chop.chop

     puts "Description \s: " + description

     puts "#################################### "

     puts ""

}

END {
	 puts ""
	 puts ""
	 puts "#################################### "
}


#Define the Class which will create a right triangle:

# Define a class
class Figure
 
# Constructor method
def initialize(a, b, h)
      @cathet_a = a
      @cathet_b = b
      @hypotenuse = h
     
end
 
# Accessor methods
def printCathet_a
      @cathet_a
end
def printCathet_b
      @cathet_b
end

def printHypotenuse
      @hypotenuse
end


end
 
# Create an object
right_triangle = Figure.new(5, 3, 10)
 
# Use accessor methods
x = right_triangle.printCathet_a()
y = right_triangle.printHypotenuse()
z = right_triangle.printCathet_b()
 
# Print output
puts "Perimeter of the right triangle is : #{x+y+z}"
puts "Area of the right triangle is : #{(0.5*x*y).to_i}"