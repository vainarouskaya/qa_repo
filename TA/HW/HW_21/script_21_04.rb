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

require "./script_21_01.rb"


require "./script_21_02.rb"


require "./script_21_03.rb"


require "./script_21_03.rb"
