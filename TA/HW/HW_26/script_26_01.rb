BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_26__script_26_01"

 

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

doc = Nokogiri::HTML(open("http://www.alegro.com/sdc.xml"))
# === using xpath
# doc.xpath('//server/orig-kw').each do |line|
doc.css('server orig-kw').each do |line|
     puts ""
     puts "Original Keyword: " + line.text
end
# === retrieving server > engine
doc.css('server engine').each do |line|
     puts ""
     puts "Server name: " + line.text
end
# === retrieving server > country_id
doc.css('server country_id').each do |line|
     puts ""
     if line.text == "1" then
     puts "Country : US"
     elsif line.text == "44" then
     puts "Country : UK"
     elsif line.text == "250" then
     puts "Country : FR"
     elsif line.text == "276" then
     puts "Country : DE"
     elsif line.text == "36" then
     puts "Country : AU"
     else
     puts "Country : N/A"
     end
end

#Search engine version
# === retrieving server > kadu-version
doc.css('server kadu-version').each do |line|
     puts ""
     puts "Search engine version: " + line.text
end

#Index
# === retrieving server > kadu-index-info
doc.css('server kadu-index-info').each do |line|
     puts ""
     puts "Index: " + line.text
end

#Name of the deal #15
# === retrieving deal xref="15" > name
# === using xpath
# doc.xpath('//deals/deal[@xref="15"]/name').each do |line|

doc.css('deals deal[xref="15"] name').each do |line|
     puts ""
     puts "Name of the deal #15: " + line.text
end

#Description of the deal #15
# === using xpath
# doc.xpath('//deals/deal[@xref="15"]/description').each do |line|

     doc.css('deals deal[xref="15"] description').each do |line|
     puts ""
     puts "Description of the deal #15: \n" + line.text
     puts "Length is : #{line.text.length}"
end


#Price of the deal #15
# === retrieving deal xref="15"> price
doc.css('deals deal[xref="15"] price').each do |line|
     puts ""
     puts "Price of the deal #15: " + line.text
end

#Url of the deal #15
# === retrieving deal xref="15"> url
doc.css('deals deal[xref="15"] url').each do |line|
     puts ""
     puts "Url of the deal #15: " + line.text
end


#Product-id of the deal #15
# === retrieving url > product-id
doc.css('deals deal[xref="15"] url product-id').each do |line|
     puts ""
     puts "roduct-id of the deal #15: " + line.text
end

