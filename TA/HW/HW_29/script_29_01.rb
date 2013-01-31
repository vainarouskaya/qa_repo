BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_29__script_29_01"

 

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
query = "What is Selenium?"

#1. Navigate to bing.com
my_browser.navigate.to website


#2. Display the title of the my_browser
puts "Title of the Bing.com Page \t\t\t: #{my_browser.title}"

#3.Search for the word "What is Selenium?"
#4.Display the title of the Bing.com result page

element = my_browser.find_element(:id, 'sb_form_q')
element.send_keys query

my_browser.find_element(:id, 'sb_form_go').click

our_result_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the Bing.com Result Page \t\t: #{our_result_page_title.text}"

#5.Create snapshot of the Bing.com result page

my_browser.save_screenshot "1.png"

#6.Click on eHow.com link

my_browser.find_element(:link_text, "What Is Selenium? | eHow.com").click

#7.Display the title of the eHow.com page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the eHow.com Page \t\t\t: #{new_page_title.text}"

#8.Create snapshot of the page eHow.com page
my_browser.save_screenshot "2.png"

#9.Click on About eHow link
my_browser.find_element(:partial_link_text, "About eHow").click

#10.Display the title of the About eHow page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the eHow.com About Page \t\t: #{new_page_title.text}"

#11.Create snapshot of the page About eHow page

my_browser.save_screenshot "3.png"


#12. Click on eHow Now Blog link

my_browser.find_element(:partial_link_text, "eHow Blog").click

#13.Display the title of the eHow Now Blog page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the eHow.com Blog Page \t\t: #{new_page_title.text}"

#14.Create snapshot of the page eHow Now Blog
my_browser.save_screenshot "4.png"

#15.Click on How To Directory link

my_browser.find_element(:partial_link_text, "How to by Topic").click

#16.Display the title of the How To Directory page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the eHow.com How to by Topic Page \t: #{new_page_title.text}"

#17.Create snapshot of the page How To Directory
my_browser.save_screenshot "5.png"

#18.Click on How To Videos link
my_browser.find_element(:partial_link_text, "How to Videos").click

#19.Display the title of the How To Videos page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the eHow.com How to Videos Page \t: #{new_page_title.text}"

#20.Create snapshot of the page How To Videos
my_browser.save_screenshot "6.png"

#21.Click on eHow Sitemap link
my_browser.find_element(:partial_link_text, "Sitemap").click

#22.Display the title of the eHow Sitemap page
new_page_title = my_browser.find_element(:tag_name, 'title')

puts "Title of the eHow.com Sitemap Page \t\t: #{new_page_title.text}"


#23.Create snapshot of the page eHow Sitemap

my_browser.save_screenshot "7.png"


#24.Close the browser

my_browser.quit
