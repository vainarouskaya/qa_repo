 #Create 2 empty hashes: year and contacts
year = {}
contacts = {}                                                                      
 puts year
 puts contacts
 
#Display the class of each hash
puts "Class of hash 'year' is: #{year.class}"
#Display the size of each hash
puts "Size of hash 'year' is: #{year.size}"
#Display all keys of each hash
puts "All keys of hash 'year': #{year.keys}"
#Display all values of each hash
puts "All values of hash 'year': #{year.values}"
#Verify if that hash is empty.
puts "Is hash 'year' empty?: #{year.empty?}"

#Display the class of each hash
puts "Class of hash 'contacts' is: #{contacts.class}"
#Display the size of each hash
puts "Size of hash 'contacts' is: #{contacts.size}"
#Display all keys of each hash
puts "All keys of hash 'contacts': #{contacts.keys}"
#Display all values of each hash
puts "All values of hash 'contacts': #{contacts.values}"
#Verify if that hash is empty.
puts "Is hash 'contacts' empty?: #{contacts.empty?}"

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
