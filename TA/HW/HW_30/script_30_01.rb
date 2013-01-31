BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_30__script_30_01"

 

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
query = "What is Selenium?"

#1. Navigate to bing.com
my_browser.goto website
puts " "

#2. Display the title of the my_browser
puts "Title of the Bing.com Page \t\t\t: #{my_browser.title}"
#puts "Url of the Bing.com: #{my_browser.url}"

my_browser.screenshot.save "bing_01.png"

#3.Search for the word "What is Selenium?"
#4.Display the title of the Bing.com result page

my_browser.text_field(:id, 'sb_form_q').set query

my_browser.button(:id, 'sb_form_go').click


puts "Title of the Bing.com Result Page \t\t: #{my_browser.title}"
#puts "URL of result page: #{my_browser.url}"

#5.Create snapshot of the Bing.com result page

my_browser.screenshot.save "bing_02.png"

#6.Click on eHow.com link

#my_browser.link(:text => "What Is Selenium? | eHow.com").click
my_browser.link(:text => /eHow.com/).click


#7.Display the title of the eHow.com page

puts "Title of the eHow.com Page \t\t\t: #{my_browser.title}"
#puts "URL of eHow.com page: #{my_browser.url}"

#8.Create snapshot of the page eHow.com page
my_browser.screenshot.save "bing_03.png"
puts " "

#9.Click on About eHow link
my_browser.link(:text => /About eHow/).click

#10.Display the title of the About eHow page

puts "Title of About page: #{my_browser.title}"
#puts "URL of About page: #{my_browser.url}"

#11.Create snapshot of the page About eHow page

my_browser.screenshot.save "bing_04.png"

puts " "

#12. Click on eHow Now Blog link

my_browser.link(:text => /eHow Blog/).click

#13.Display the title of the eHow Now Blog page

puts "Title of the eHow.com Blog Page \t\t: #{my_browser.title}"
#puts "URL of Blog page: #{my_browser.url}"

#14.Create snapshot of the page eHow Now Blog
my_browser.screenshot.save "bing_05.png"
puts " "

#15.Click on How To Directory link

my_browser.link(:text => /How to by Topic/).click

#16.Display the title of the How To Directory page

puts "Title of the eHow.com How to by Topic Page \t: #{my_browser.title}"

#17.Create snapshot of the page How To Directory
my_browser.screenshot.save "bing_06.png"

puts " "

#18.Click on How To Videos link
my_browser.link(:text => /How to Videos/).click

#19.Display the title of the How To Videos page

puts "Title of the eHow.com How to Videos Page \t: #{my_browser.title}"

#20.Create snapshot of the page How To Videos
my_browser.screenshot.save "bing_07.png"

puts " "

#21.Click on eHow Sitemap link
my_browser.link(:text => /Sitemap/).click

#22.Display the title of the eHow Sitemap page

puts "Title of the eHow.com Sitemap Page \t\t: #{my_browser.title}"


#23.Create snapshot of the page eHow Sitemap

my_browser.screenshot.save "bing_08.png"


#24.Close the browser

my_browser.quit
