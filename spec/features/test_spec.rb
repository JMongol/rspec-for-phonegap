require 'spec_helper'

feature "Example" do
  before(:each) do
    # Do whatever you need to do before the suite runs
    visit "http://google.com"
  end
  
  describe "some tests" do     
    it "should search for donuts" do
      fill_in "gbqfq", :with => "donuts"
      page.should have_content "Doughnut - Wikipedia, the free encyclopedia"
    end
  end
end