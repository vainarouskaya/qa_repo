 #For hash "year" provide following:
year = {:january => [1..31], :february => [1..28],
  :march => [1..31], :april => [1..30], :may => [1..31], :june => [1..30], :july => [1..31], :august => [1..31],
  :september => [1..30], :october => [1..31], :november => [1..31], :december => [1..31]}

#1.      Display the class of the hash
puts "Class of hash 'year' is: #{year.class}"
#2.      Display the size of the hash
puts "Size of hash 'year' is: #{year.size}"
#3.      Display the all keys of the hash
puts "All keys of hash 'year' is: #{year.keys}"
#4.      Display the all values of the hash
puts "All values of hash 'year' is: #{year.values}"
#5.      Sort this hash in ascending order (a to z)
puts "Sorting (ASC) of hash 'year' is: #{year.sort}"
#6.      Sort this hash in descending order (z to a)
puts "Sorting (DESC) of hash 'year' is: #{year.sort{|a,b| b <=> a}}"
#7.      Convert this hash in to string and display it
puts "Converting hash 'year' to string: #{year.to_s}"
#8.      Convert this hash in to array and display it
puts "Converting hash 'year' to array: #{year.to_a}"
#9.      Removes all elements from this hash
puts "Removing all elements from hash 'year': #{year.clear}"

BEGIN {
    name = "Iryna Vainarouskaya"
    description = "HW_QA_22"
    
    puts "####################################"
    puts "Author \s\s\s\s\s : " + name
    puts "Date \s\s\s\s\s\s\s\s: " + Time.now.to_s[0..18]
    puts ""
    puts "Ruby version : " + RUBY_VERSION
    puts "Script \s\s\s\s\s\s: " + __FILE__.chop.chop.chop
    puts "Description \s: " + description
    puts "#################################### "
    puts ""
}