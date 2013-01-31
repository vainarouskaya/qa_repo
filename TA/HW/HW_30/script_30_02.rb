BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_30_script_30_02.rb"

 

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

require 'watir-webdriver'

#my_browser = Watir::Browser.new :ie
#my_browser = Watir::Browser.new :chrome
#my_browser = Watir::Browser.new :safari

my_browser = Watir::Browser.new :firefox
my_browser.driver.manage.timeouts.implicit_wait = 15

website = "http://www.bing.com"
query = "Quality Assurance"

#1. Navigate to bing.com
my_browser.goto website
puts " "

#2. Display the title of the my_browser
puts "Title of the Bing.com Page \t\t\t: #{my_browser.title}"
#puts "Url of the Bing.com: #{my_browser.url}"

my_browser.screenshot.save "bing_101.png"

#3.Search for the word "Quality Assurance"
#4.Display the title of the Bing.com result page

my_browser.text_field(:id, 'sb_form_q').set query

my_browser.button(:id, 'sb_form_go').click


puts "Title of the Bing.com Result Page \t\t: #{my_browser.title}"
#puts "URL of result page: #{my_browser.url}"

#5.Create snapshot of the Bing.com result page

my_browser.screenshot.save "bing_102.png"

#6.Click on SQA | Home link

my_browser.link(:text => /SQA | Home/).click


#7.Display the title of SQA | Home page

puts "Title of the SQA | Home Page \t\t\t: #{my_browser.title}"
#puts "URL of SQA | Home page: #{my_browser.url}"

#8.Create snapshot of the SQA | Home page
my_browser.screenshot.save "bing_103.png"
puts " "

#9.Click on Join SQA link
my_browser.link(:text => /Join SQA/).click

#10.Display the title of the Join SQA page

puts "Title of Join SQA page: #{my_browser.title}"
puts "URL of Join SQA page: #{my_browser.url}"

#11.Create snapshot of the page Join SQA page

my_browser.screenshot.save "bing_104.png"

puts " "

#12. Click on Advertising Opportunities link

my_browser.link(:text => /Advertising Opportunities/).click

#13.Display the title of the Advertising Opportunities page

puts "Title of the Advertising Opportunities Page \t\t: #{my_browser.title}"
puts "URL of Advertising Opportunities page: #{my_browser.url}"

#14.Create snapshot of the page Advertising Opportunities
my_browser.screenshot.save "bing_105.png"
puts " "

#15.Click on Privacy Policy link

my_browser.link(:text => /Privacy Policy/).click

#16.Display the title of the Privacy Policy page

puts "Title of the Privacy Policy Page \t: #{my_browser.title}"

#17.Create snapshot of the page Privacy Policy
my_browser.screenshot.save "bing_106.png"

puts " "

#18.Click on Search link
my_browser.link(:text => /Search/).click

#19.Display the title of the Search page

puts "Title of the Search Page \t: #{my_browser.title}"

#20.Create snapshot of the page Search
my_browser.screenshot.save "bing_107.png"

puts " "

#21.Click on Site Map link
my_browser.link(:text => /Site Map/).click

#22.Display the title of Site Map page

puts "Title of the Site Map Page \t\t: #{my_browser.title}"


#23.Create snapshot of the page Site Map

my_browser.screenshot.save "bing_108.png"

puts " "

#24.Click on Contact Us link
my_browser.link(:text => /Contact Us/).click

#25.Display the title of the Contact Us page

puts "Title of the Contact Us Page \t\t: #{my_browser.title}"


#26.Create snapshot of the page Contact Us

my_browser.screenshot.save "bing_109.png"


#27.Click on Home link
my_browser.link(:text => /Home/).click

#28.Display the title of the Home page

puts "Title of the Home \t\t: #{my_browser.title}"


#29.Create snapshot of the page Home

my_browser.screenshot.save "bing_110.png"


#30.Close the browser

my_browser.quit

