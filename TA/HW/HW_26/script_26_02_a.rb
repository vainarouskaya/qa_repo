BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_26__script_26_02_a"

 

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

require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.shopping.com"))
# === using css
# doc.css('title').each do |line|
doc.xpath('//title').each do |line|
     puts "Shopping.com title is: " + line.text
     puts "Length is : #{line.text.length}"
     puts ""
end

doc = Nokogiri::HTML(open("http://www.google.com"))
# === using css
# doc.css('title').each do |line|
doc.xpath('//title').each do |line|
     puts "Google.com title is: " + line.text
     puts "Length is : #{line.text.length}"
     puts ""
end

doc = Nokogiri::HTML(open("http://www.yahoo.com"))
# === using css
# doc.css('title').each do |line|
doc.xpath('//title').each do |line|
     puts "Yahoo.com title is: " + line.text
     puts "Length is : #{line.text.length}"
     puts ""
end

doc = Nokogiri::HTML(open("http://www.ebay.com"))
# === using css
# doc.css('title').each do |line|
doc.xpath('//title').each do |line|
     puts "Ebay.com title is: " + line.text
     puts "Length is : #{line.text.length}"
     puts ""
end

doc = Nokogiri::HTML(open("http://www.apple.com"))
# === using css
# doc.css('title').each do |line|
doc.xpath('//title').each do |line|
     puts "Apple.com title is: " + line.text
     puts "Length is : #{line.text.length}"
     puts ""
end