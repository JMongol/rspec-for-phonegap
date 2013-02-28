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

# Configure Capybara to run against a local server
Capybara.default_driver = :selenium
Capybara.app_host = 'http://google.com'
Capybara.run_server = false