# In the off chance that some gem needs RAILS_ENV, let's define it
ENV["RAILS_ENV"] ||= 'test'

# Set up capybara integration
require 'capybara/rspec'
require 'capybara/dsl'

# Add any other requires you might need here.

# Set up RSpec
RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec
end

# Register an iPhone driver with Capybara to communicate with the iWebView driver that's running on the simulator or
# device. You'll need a copy of the Selenium source and Xcode; build the project in the iPhone folder and run it.
# This page might be helpful: http://code.google.com/p/selenium/wiki/IPhoneDriver
Capybara.register_driver :iphoneremote do |app|
  Capybara::Selenium::Driver.new(app, {:browser => :remote, :url => "http://192.168.1.41:3001/wd/hub", :desired_capabilities => :iphone})
end

# Configure Capybara to run against a local server
Capybara.default_driver = :iphoneremote
