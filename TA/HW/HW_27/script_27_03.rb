BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_27__script_27_03_b"

 

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



require 'mechanize'

saxon = Mechanize.new
fish = saxon.get('http://www.htmlcodes.me')

puts ""
puts "= LIST OF ALL LINKS ="
fish.links.each do |lakes|
     
     puts lakes.text
end