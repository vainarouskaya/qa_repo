#Create method "calc_sum_two" with parameters "first" and "second"
def calc_sum_two(first, second)

print "Summary of \'first\' and \'second\' is #{first + second}"
end
#Call this method with parameters 'first' and 'second' and values 5 and 17 correspondently
calc_sum_two(5, 17)
BEGIN {
    name = "Iryna Vainarouskaya"
    description = "HW_QA_21"
    
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