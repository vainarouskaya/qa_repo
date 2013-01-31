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

monthly_payment = "$1,654.55"
yearly_payment = monthly_payment.slice(3..10).to_f.+1000
yearly_payment = yearly_payment*12

puts yearly_payment

	 puts ""
	 puts ""
	 puts "#################################### "
