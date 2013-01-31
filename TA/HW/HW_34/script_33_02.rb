BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_34__script_33_02"

 

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


# ======================================================================
require "watir-webdriver"

browser = Watir::Browser.new :firefox
browser.driver.manage.timeouts.implicit_wait = 5
# ======================================================================
# browser.window.move_to(0, 0)
# browser.window.resize_to(1000, 800)
# browser.cookies.clear
# ======================================================================
#url = 'http://www.alegro.com/app_v1'
url = 'http://www.alegro.com/app_v2'
# ======================================================================
browser.goto url

# ======================================================================
puts "===================================================="
puts "Title: #{browser.title}"
puts browser.url
browser.screenshot.save 'tc_001-1.png'
puts "===================================================="
# ======================================================================
puts "===================================================="
# = Test Case: Title verification ======================================

if browser.title == "Sign Up"
puts "Test Case: Title verification - Passed!"
else
puts "Test Case: Title verification - Failed!"
end

puts "===================================================="
# ======================================================================
puts "===================================================="
# = Test Case: Quotes verification =====================================

quote = browser.td(:id => "id_quotes")
# puts quote.text

# if quote.text.include?("a")
if browser.td(:id => "id_quotes").exists? and quote.text.size > 1
  puts "Test Case TC-01-01: Quotes verification - Passed!"
else
puts "Test Case TC-01-01: Quotes verification - Failed!"
end
puts "===================================================="
browser.screenshot.save 'tc_01.png'
# ======================================================================
puts "===================================================="

# = Test Case: First Name field verification ===========================
if browser.text_field(:id => "id_fname").exists?
puts "Test Case: First Name field verification - Passed!"
else
puts "Test Case: First Name field verification - Failed!"
end

browser.screenshot.save 'tc_02.png'
puts "===================================================="
# ======================================================================
puts "= Links Verification ==============================="
#puts "==== Facebook ======================================"
# = Test Case: Facebook link verification ==============================


if browser.link(:id => "id_link_facebook").href == "http://www.facebook.com/"

puts "Test Case TC-01-02: Facebook Link verification - Passed!"
else
puts "Test Case TC-01-02: Link verification - Failed!"
actual_link_href = browser.link(:id => "id_link_facebook").href

puts "Expected: http://www.facebook.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="
browser.screenshot.save 'tc_03.png'

#= Test Case: Twitter link verification ==============================


if browser.link(:id => "id_link_twitter").href == "http://www.twitter.com/"

puts "Test Case TC-01-03: Twitter Link verification - Passed!"
else
puts "Test Case TC-01-03: Link verification - Failed!"
actual_link_href = browser.link(:id => "id_link_twitter").href

puts "Expected: http://www.twitter.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="
browser.screenshot.save 'tc_03_01.png'

# = Test Case: Youtube link verification ==============================


if browser.link(:id => "id_link_youtube").href == "http://www.youtube.com/"

puts "Test Case TC-01-04: Youtube Link verification - Passed!"
else
puts "Test Case TC-01-04: Link verification - Failed!"
actual_link_href = browser.link(:id => "id_link_youtube").href

puts "Expected: http://www.youtube.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="
browser.screenshot.save 'tc_03_02.png'


# = Test Case: Flickr link verification ==============================


if browser.link(:id => "id_link_flickr").href == "http://www.flickr.com/"

puts "Test Case TC-01-05: Flickr Link verification - Passed!"
else
puts "Test Case TC-01-05: Link verification - Failed!"
actual_link_href = browser.link(:id => "id_link_flickr").href

puts "Expected: http://www.flickr.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="
browser.screenshot.save 'tc_03_03.png'


# = Test Case: Facebook image verification =============================


# if browser.image(:alt => "Facebook").exists?
if browser.image(:src => "./facebook.png").exists?
  puts "Test Case TC-01-06: Facebook image verification - Passed!"
image_h = browser.image(:src => "./facebook.png").height
image_w = browser.image(:src => "./facebook.png").width
  puts "Facebook Image dimensions: height #{image_h} and width #{image_w}"
else

puts "Test Case TC-01-06: Facebook image verification - Failed!"
end

puts "===================================================="

#= Test Case: Twitter image verification =============================


# if browser.image(:alt => "Twitter").exists?
if browser.image(:src => "./twitter.png").exists?
  puts "Test Case TC-01-07: Twitter image verification - Passed!"
image_h = browser.image(:src => "./twitter.png").height
image_w = browser.image(:src => "./twitter.png").width
  puts "Twitter Image dimensions: height #{image_h} and width #{image_w}"
else

puts "Test Case TC-01-07: Twitter image verification - Failed!"
end

puts "===================================================="

#= Test Case: Youtube image verification =============================


# if browser.image(:alt => "Youtube").exists?
if browser.image(:src => "./youtube.png").exists?
  puts "Test Case TC-01-08: Youtube image verification - Passed!"
image_h = browser.image(:src => "./youtube.png").height
image_w = browser.image(:src => "./youtube.png").width
  puts "Youtube Image dimensions: height #{image_h} and width #{image_w}"
else

puts "Test Case TC-01-08: Youtube image verification - Failed!"
end

puts "===================================================="

#= Test Case: Flickr image verification =============================

# if browser.image(:alt => "Flickr").exists?
if browser.image(:src => "./flickr.png").exists?
  puts "Test Case TC-01-09: Flickr image verification - Passed!"
image_h = browser.image(:src => "./flickr.png").height
image_w = browser.image(:src => "./flickr.png").width
  puts "Flickr Image dimensions: height #{image_h} and width #{image_w}"
else

puts "Test Case TC-01-09: Flickr image verification - Failed!"
end

puts "===================================================="

# ======================================================================
puts "===================================================="

# = Test Case: Link verification =======================================

#if browser.link(:id => "id_link_rubygems").exists?
if browser.link(:text => "rubygems.org::output-to-file").exists?
  puts "Test Case TC-01-34: Rubygems Link verification - Passed!"
href = browser.link(:text => "rubygems.org::output-to-file").href
target = browser.link(:text => "rubygems.org::output-to-file").target
puts "Link href: #{href} and Link target: #{target}"
else
puts "Test Case TC-01-34: Rubygems Link verification - Failed!"
end

browser.screenshot.save 'tc_04.png'
puts "===================================================="
# ======================================================================
# = Test Case: Submit Button verification ==============================

if browser.button(:value => " Submit ").exists?
  puts "Test Case: Submit Button verification - Passed!"
else
puts "Test Case: Submit Button verification - Failed!"
end
browser.screenshot.save 'tc_05.png'

# = Test Case: Reset Button verification ==============================

if browser.button(:value => "  Reset  ").exists?
  puts "Test Case: Reset Button verification - Passed!"
else
puts "Test Case: Reset Button verification - Failed!"
end
browser.screenshot.save 'tc_05_01.png'


puts "===================================================="
# ======================================================================
puts "===================================================="
# = Test Case: Copyright verification ==================================

if browser.text.include?("2012 alegro.com")

puts "Test Case TC-01-33: Copyright verification - Passed!"
else

puts "Test Case TC-01-33: Copyright verification - Failed!"
actual_copyright = browser.td(:id => "copyright").text

puts "Expected: 2012 alegro.com == Actual: #{actual_copyright}"
end
browser.screenshot.save 'tc_06.png'

# = Test Case: Last update on.. verification ==================================

if browser.text.include?("Last updated")

puts "Test Case TC-01-32: Last updated verification - Passed!"
else

puts "Test Case TC-01-32: Last updated verification - Failed!"
actual_lastupdate = browser.td(:id => "lastupdate").text

puts "Expected: Last update on == Actual: #{actual_lastupdate}"
end
browser.screenshot.save 'tc_06_01.png'

puts "===================================================="
# = Entering Data =======================================================

qa_f_name = "John"
qa_l_name = "Smith"
qa_email = "my@email.com"
qa_phone = "415 555-1212"
qa_state = "California"
qa_gendre = "male"
qa_terms = "Yes"

puts "===================================================="

# ======================================================================

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone
browser.radio(:value => "Male").set
browser.select_list(:id => "id_state").select "California"
browser.checkbox(:id => "id_checkbox").set
browser.button(:value => " Submit ").click

puts "Title: #{browser.title}"
puts browser.url
puts "===================================================="
# ======================================================================
puts "===================================================="
# = Test Case: Submit button works properly --verification ======================================

if browser.title == "Conformation"
puts "Test Case TC-01-36_01: Submit button works properly - Passed!"
else
puts "Test Case TC-01-36-01: Submit button works properly - Failed!"
end


puts "===================================================="
browser.screenshot.save 'tc_07.png'



# = Test Case: Last updated on.. verification (should be none)==================================

if browser.text.include?("Last updated")

puts "Test Case TC-01-36-02: Last updated verification (none) - Failed!"
actual_lastupdate = browser.td(:id => "lastupdate").text

puts "Expected: Last update on == Actual: #{actual_lastupdate}"
else

puts "Test Case TC-01-36-02: Last updated verification (none) - Passed!"

end
browser.screenshot.save 'tc_06_01.png'

# = Test Case: Link verification (should be none) =======================================

#if browser.link(:id => "id_link_rubygems").exists?
if browser.link(:text => "rubygems.org::output-to-file").exists?
  puts "Test Case TC-01-36-03: Rubygems Link verification - Failed!"
else
puts "Test Case TC-01-36-03: Rubygems Link verification - Passed!"
end

browser.screenshot.save 'tc_06_02.png'

# = Test Case: Quotes verification (should be none) =====================================

quote = browser.td(:id => "id_quotes")
# puts quote.text

# if quote.text.include?("a")
if browser.td(:id => "id_quotes").exists? and quote.text.size > 1
  puts "Test Case TC-01-36-04: Quotes verification (none) - Failed!"
    
else
puts "Test Case TC-01-36-04: Quotes verification (none) - Passed!"
end
puts "===================================================="
browser.screenshot.save 'tc_06_03.png'

puts "======Fields' verification================="
#First name field value verification
if browser.text.include?("John")
puts "Test Case TC-01-36-05: First name field value verification - Passed!"
else

puts "Test Case TC-01-36-05: First name field value verification - Failed!"
end
#Last name field value verification
if browser.text.include?("Smith")
puts "Test Case TC-01-36-06: Last name field value verification - Passed!"
else
puts "Test Case TC-01-36-06: Last name field value verification - Failed!"
end

#Email field value verification
if browser.text.include?("my@email.com")
puts "Test Case TC-01-36-07: Email field value verification - Passed!"
else
puts "Test Case TC-01-36-07: Email field value verification - Failed!"
end

#Phone field value verification
if browser.text.include?("415 555-1212")
puts "Test Case TC-01-36-08: Phone field value verification - Passed!"
else
puts "Test Case TC-01-36-08: Phone field value verification - Failed!"
end

#Gender field value verification
if browser.text.include?("Male")
puts "Test Case TC-01-36-09: Gender field value verification - Passed!"
else
puts "Test Case TC-01-36-09: Gender field value verification - Failed!"
end

#State field value verification
if browser.text.include?("California")
puts "Test Case TC-01-36-10: State field value verification - Passed!"
else
puts "Test Case TC-01-36-10: State field value verification - Failed!"
end

#Terms field value verification
if browser.text.include?("Agreed")
puts "Test Case TC-01-36-11: State field value verification - Passed!"
else
puts "Test Case TC-01-36-11: State field value verification - Failed!"
end


#= Test Case: Back Button verification ==============================

if browser.button(:value => "  Back  ").exists?
  puts "Test Case: Back Button verification - Passed!"
else
puts "Test Case: Back Button verification - Failed!"
end
browser.screenshot.save 'tc_05_02.png'

# = Test Case: Back button works properly ======================================
browser.button(:value => "  Back  ").click

puts "Title: #{browser.title}"
puts browser.url
puts "===================================================="
# ======================================================================
puts "===================================================="


if browser.title == "Sign Up"
puts "Test Case TC-01-37: Back button works properly - Passed!"
else
puts "Test Case TC-01-37: Back button works properly - Failed!"
end

browser.screenshot.save 'tc_07_01.png'

# = Test Case: Reset button works properly ======================================
browser.button(:value => "  Reset  ").click
browser.screenshot.save 'tc_07_02.png'
#========================================================================
browser.close

