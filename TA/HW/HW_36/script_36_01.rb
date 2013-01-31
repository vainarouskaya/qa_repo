require "watir-webdriver"
require "test-unit" 

class Sign_Up < Test::Unit::TestCase 

def setup 
  @browser = Watir::Browser.new :firefox
  url = 'http://www.alegro.com/app_v1/'
  @browser.goto url
end 

def teardown 
  @browser.close
end 


def test_03_last_name_field_verification
	actual_result = @browser.text_field(:id => "id_lname").exists?
	assert(actual_result, "Element is not exist ...............")
end


end