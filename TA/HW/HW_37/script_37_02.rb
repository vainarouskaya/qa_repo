require 'watir-webdriver'
require "rspec"
=begin
browser = Watir::Browser.new :firefox
browser.goto "http://google.com"
browser.text_field(:name => "q").set "watir"
browser.button.click
puts browser.title
browser.close
=end

describe "google.com" do
  before 	{
  @browser = Watir::Browser.new :firefox
  @browser.goto "http://google.com"
			}
  after 	{
  @browser.close
			}

  it "Test case # 001: Search for watir" do
    @browser.text_field(:name => "q").set "watir"
    @browser.button.click
    @browser.div(:id => "resultStats").wait_until_present
   # @browser.title.should == "watir - Google Search"
   @browser.title.should == "blah blah blah"
  end
  
end
