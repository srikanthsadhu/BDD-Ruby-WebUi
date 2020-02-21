require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'rspec'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'

browser_name = ENV['BROWSER'] || "chrome"

puts '--- Test Environment Variables ---'
puts 'Browser            ' + browser_name
puts '---'

# Configure Capybara with default driver
Capybara.configure do |config|
  config.default_driver = :selenium
end

# Register Chrome driver
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# Choose a driver to use
case browser_name.upcase
when 'CHROME'
  Capybara.default_driver = :selenium_chrome
else
  raise("Browser '#{browser_name}' is not supported. Chrome or Headless")
end

