BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_29_script_29_02.rb"

 

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

require 'selenium-webdriver'


my_browser = Selenium::WebDriver.for :firefox
my_browser.manage.timeouts.implicit_wait = 15

website = "http://www.bing.com"
query = "Quality Assurance?"

#1. Navigate to bing.com
my_browser.navigate.to website


#2. Display the title of the my_browser
puts "Title of the Bing.com Page \t\t\t: #{my_browser.title}"

#3.Search for the word "Quality Assurance?"
#4.Display the title of the Bing.com result page

element = my_browser.find_element(:id, 'sb_form_q')
element.send_keys query

my_browser.find_element(:id, 'sb_form_go').click

our_result_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Bing.com Result Page \t\t: #{our_result_page_title.text}"

#5.Create snapshot of the Bing.com result page

my_browser.save_screenshot "1.png"

#6.Click on SQA|Home link

my_browser.find_element(:link_text, "SQA | Home").click

#7.Display the title of the SQA|Home page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the SQA|Home Page \t\t\t: #{new_page_title.text}"

#8.Create snapshot of the page SQA|Home page
my_browser.save_screenshot "2.png"

#9.Click on Join SQA link
my_browser.find_element(:partial_link_text, "Join SQA").click

#10.Display the title of the Join SQA page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Join SQA page is \t\t: #{new_page_title.text}"

#11.Create snapshot of the page Join SQA

my_browser.save_screenshot "3.png"


#12. Click on Advertising Opportunities link

my_browser.find_element(:partial_link_text, "Advertising Opportunities").click

#13.Display the title of the Advertising Opportunities page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of Advertising Opportunities Page \t\t: #{new_page_title.text}"

#14.Create snapshot of the page Advertising Opportunities
my_browser.save_screenshot "4.png"

#15.Click on  Privacy Policy  link

my_browser.find_element(:partial_link_text, "Privacy Policy").click

#16.Display the title of Privacy Policy page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Privacy Policy Page \t: #{new_page_title.text}"

#17.Create snapshot of the page Privacy Policy
my_browser.save_screenshot "5.png"

#18.Click on Search link
my_browser.find_element(:partial_link_text, "Search").click

#19.Display the title of the Search page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Search page is \t: #{new_page_title.text}"

#20.Create snapshot of the page Search
my_browser.save_screenshot "6.png"

#21.Click on Site Map link
my_browser.find_element(:partial_link_text, "Site Map").click

#22.Display the title of the Site Map page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Site Map Page \t\t: #{new_page_title.text}"


#23.Create snapshot of the page Site Map

my_browser.save_screenshot "7.png"


#24.Click on Contact Us link
my_browser.find_element(:partial_link_text, "Contact Us").click

#25.Display the title of the Contact Us page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Contact Us Page \t\t: #{new_page_title.text}"


#26.Create snapshot of the page Contact Us

my_browser.save_screenshot "8.png"


#27.Click on Home link
my_browser.find_element(:partial_link_text, "Home").click

#28.Display the title of the Home page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Home \t\t: #{new_page_title.text}"


#29.Create snapshot of the page Home

my_browser.save_screenshot "9.png"


#30.Close the browser

my_browser.quit

