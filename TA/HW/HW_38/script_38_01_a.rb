BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_38__script_38_01_a"

 

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

require "selenium-webdriver"
require "test/unit"

class Untitled < Test::Unit::TestCase

  def setup
    @driver = Selenium::WebDriver.for :firefox
    @web_page = "http://www.mortgagecalculator.org/"
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  def teardown
    @driver.quit
    assert_equal [], @verification_errors
  end
  
  def test_untitled_1
    # open | / | 
    @driver.get(@web_page + "/")
    # type | name=param[homevalue] | 800000
    @driver.find_element(:name, "param[homevalue]").clear
    @driver.find_element(:name, "param[homevalue]").send_keys "800000"
    # click | css=input[type="submit"] | 
    @driver.find_element(:css, "input[type=\"submit\"]").click
    # type | name=param[principal] | 600000
    @driver.find_element(:name, "param[principal]").clear
    @driver.find_element(:name, "param[principal]").send_keys "600000"
    # select | name=param[rp] | label=New Purchase
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "param[rp]")).select_by(:text, "New Purchase")
    # type | name=param[interest_rate] | 3
    @driver.find_element(:name, "param[interest_rate]").clear
    @driver.find_element(:name, "param[interest_rate]").send_keys "3"
    # select | name=param[start_month] | label=Sep
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:name, "param[start_month]")).select_by(:text, "Sep")
    # type | name=param[property_tax] | 0
    @driver.find_element(:name, "param[property_tax]").clear
    @driver.find_element(:name, "param[property_tax]").send_keys "0"
    # type | name=param[pmi] | 0
    @driver.find_element(:name, "param[pmi]").clear
    @driver.find_element(:name, "param[pmi]").send_keys "0"
    # click | css=input[type="submit"] |
    @driver.save_screenshot('pic_01.png')
    @driver.find_element(:css, "input[type=\"submit\"]").click
      
    assert_equal "$2,529.62", @driver.find_element(:xpath, "//table[@id='summary']/tbody/tr[3]/td[1]/h3").text
    @driver.save_screenshot('pic_02.png')
  end
  
  def element_present?(how, what)
    @driver.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def verify(&blk)
    yield
  rescue Test::Unit::AssertionFailedError => ex
    @verification_errors << ex
  end
end
