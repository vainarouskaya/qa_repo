BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_35__script_33_03"

 

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
#url = 'http://www.alegro.com/app_v2'

url = 'http://www.alegro.com/app_v3'
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


# = Test Case: Last Name field verification ===========================
if browser.text_field(:id => "id_lname").exists?
puts "Test Case: Last Name field verification - Passed!"
else
puts "Test Case: Last Name field verification - Failed!"
end


# = Test Case: Phone field verification ===========================
if browser.text_field(:id => "id_phone").exists?
puts "Test Case: Phone field verification - Passed!"
else
puts "Test Case:  Phone field verification - Failed!"
end

# = Test Case: Email field verification ===========================
if browser.text_field(:id => "id_email").exists?
puts "Test Case: Email field verification - Passed!"
else
puts "Test Case: Email field verification - Failed!"
end

# = Test Case: Gender field verification ===========================
if browser.text_field(:id => "id_g_radio").exists?
puts "Test Case: Gender field verification - Passed!"
else
puts "Test Case: Gender field verification - Failed!"
end

# = Test Case: State field verification ===========================
if browser.text_field(:id => "id_state").exists?
puts "Test Case: State field verification - Passed!"
else
puts "Test Case: State field verification - Failed!"
end

# = Test Case: Last Name field verification ===========================
if browser.text_field(:id => "id_checkbox").exists?
puts "Test Case: Terms checkbox verification - Passed!"
else
puts "Test Case: Terms checkbox verification - Failed!"
end


browser.screenshot.save 'tc_02.png'

puts "===================================================="
# ======================================================================
puts "= Links Verification ==============================="
#puts "==== Facebook ======================================"
# = Test Case: Facebook link verification ==============================


if browser.link(:id => "id_link_facebook").exists? and browser.link(:id => "id_link_facebook").href == "http://www.facebook.com/"

puts "Test Case TC-01-02: Facebook Link verification - Passed!"
else
puts "Test Case TC-01-02: Facebook Link verification - Failed!"

end

puts "===================================================="
browser.screenshot.save 'tc_03.png'

#= Test Case: Twitter link verification ==============================


if browser.td(:id => "id_link_twitter").exists? and  browser.link(:id => "id_link_twitter").href == "http://www.twitter.com/"

puts "Test Case TC-01-03: Twitter Link verification - Passed!"
else
puts "Test Case TC-01-03: Twitter Link verification - Failed!"

end

puts "===================================================="
browser.screenshot.save 'tc_03_01.png'

# = Test Case: Youtube link verification ==============================


if browser.link(:id => "id_link_youtube").exists? and browser.link(:id => "id_link_youtube").href == "http://www.youtube.com/"

puts "Test Case TC-01-04: Youtube Link verification - Passed!"
else
puts "Test Case TC-01-04: Youtube Link verification - Failed!"
end

puts "===================================================="
browser.screenshot.save 'tc_03_02.png'


# = Test Case: Flickr link verification ==============================


if browser.link(:id => "id_link_flickr").exists? and browser.link(:id => "id_link_flickr").href == "http://www.flickr.com/"

puts "Test Case TC-01-05: Flickr Link verification - Passed!"
else
puts "Test Case TC-01-05: Flickr Link verification - Failed!"

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

#= Test Case: Submit Button verification ==============================

if browser.button(:value => " Submit ").exists?
  puts "Test Case: Submit Button verification - Passed!"
else
puts "Test Case: Submit Button verification - Failed!" 
end

#========================================================================
browser.close

