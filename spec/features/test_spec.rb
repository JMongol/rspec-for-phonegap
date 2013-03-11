require 'spec_helper'

feature "Example" do
  before(:each) do
    # Do whatever you need to do before the suite runs
    visit "http://google.com"
  end
  
  describe "some tests" do     
    it "should search for donuts" do
      # Search for donuts - this is specific to the mobile version of google.com at this point.
      fill_in "q", :with => "donuts"
      click_button "tsbb"
      page.should have_content "Doughnut - Wikipedia, the free encyclopedia"
    end
  end
end