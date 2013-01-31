 #Display result of both conditions (true and false) of the logical operator and using following variables:  a, b
#True condition:
a=10
b=3
if a==10 and b == 3
puts "Correct"
else
puts "Not correct"
end
#False condition:

a=10
b=3

if a==10 and b==5
puts "Correct"
else 
puts "Not correct"
end


BEGIN

{

     name = "Iryna Vainarouskaya"

     description = "Display result of both conditions (true and false) of the logical operator and using following variables:  a, b"

 

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

