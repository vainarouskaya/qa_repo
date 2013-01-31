BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_27__script_27_04"

 

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

saxon.get('http://www.google.com/') do |page|
     fish = page.form_with(:name => 'f') do |search|
	  search.q = 'Quality Assurance'

end.submit

fish.links.each do |link|
       puts link.text
end
end