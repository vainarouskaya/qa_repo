monthly_payment = "$1,654.55"


yearly_payment = monthly_payment.gsub(/\,/,"").reverse.chop.reverse.to_f.*12

yearly_payment = "%.2f" %yearly_payment
yearly_payment = yearly_payment.to_s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse



puts "Yearly payment is #{yearly_payment} dollars"

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