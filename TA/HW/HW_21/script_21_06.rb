
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

#Create method "calc_sum_any" with parameters do following:
#Print summarization of all values (could be any amount of values)
# Call this method 3 times with multiple parameters with values:

def calc_sum_any(first, *rest)
    rest.each {|r| first = first + r}
    print first
end
calc_sum_any(22, 55, 634, 647, 226, 416)
calc_sum_any(543, 56, 3, 245, 456, 3345, 1, 776, 4865, 2998, 1712)
calc_sum_any(1,5,4)
