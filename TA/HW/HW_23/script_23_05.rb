
cast = "payment: $91.21, tax: 8.25%"

payment = cast.slice(10..14).to_f

tax = cast.slice(22..25).to_f*payment/100

total = payment + tax

puts puts "Your total payment, including the tax is: $#{total}"
	
BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_23"

 

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
	 puts ""
	 puts ""
	 puts "#################################### "