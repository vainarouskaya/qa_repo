BEGIN {

     name = "Iryna Vainarouskaya"

     description = "script_24_01: Define the Class which will create a circle"

 

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

#Define the Class which will create a circle (provide the radius), and print out:

# Define a class
class Figure
 
# Constructor method
def initialize(r)
      @radius = r
     
end
 
# Accessor methods
def printRadius
      @radius
end

end
 
# Create an object
circle = Figure.new(10)
 
# Use accessor methods
x = circle.printRadius()
PI = 3.14
 
# Print output
perimeter = 2*PI*x
perimeter = "%.2f" %perimeter
puts "Perimeter of the circle is : #{perimeter}"
puts "Area of the circle is : #{PI*x*x}"