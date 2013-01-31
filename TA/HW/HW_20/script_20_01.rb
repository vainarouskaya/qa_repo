 #Create 4 emprty arrays:
days = []
weeks = []
months = []
contacts = []

BEGIN {
    name = "Iryna Vainarouskaya"
    description = "HW_QA_20"
    
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
#For each array (4) provide the following info:
#Display the class of each array
puts "Class of array 'days', 'weeks', 'months', 'contacts' is: #{days.class}, #{weeks.class}, #{months.class}, #{contacts.class}"
#Display the size of each array
puts "Size of array 'days', 'weeks', 'months', 'contacts' is: #{days.size}, #{weeks.size}, #{months.size}, #{contacts.size}"
#Display the first item of each array
puts "First item of array 'days', 'weeks', 'months', 'contacts' is: #{days.first}, #{weeks.first}, #{months.first}, #{contacts.first}"
#Display the last item of each array
puts "Last item of array 'days', 'weeks', 'months', 'contacts' is: #{days.last}, #{weeks.last}, #{months.last}, #{contacts.last}"
# Verify if that array is empty
puts "Is array 'days', 'weeks', 'months', 'contacts' empty?: #{days.empty?}, #{weeks.empty?}, #{months.empty?}, #{contacts.empty?}"