# cucumber-ruby-which? 
Uses ruby-capybara-site-prism

Capybara(Selenium Webdriver wrapper) and Site Prism(POM abstraction) framework that uses Cucumber(BDD) and Ruby.

POM - Page Object Model simplifies abstraction of elements for each page
BDD - Gherkhin based acceptance framework.

A fairly basic framework, using Ruby and Cucumber with Capybara(webdriver wrapper) and Siteprism (POM).
A good example to see expectations in action.
Good use of the Page Object Model.
Supports Chrome, Headless .
Some basic profiles are included
# References : 
https://www.rubydoc.info/gems/site_prism/frames#Using_SitePrism_with_RSpec
https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

# What this is not...

An over all perfect all-in-one super and ONLY BDD framework.
Something that you can 100% copy over for any app (though I suspect you'd be able to use most, as is).
Known limitations...

Probably loads.
Want more?

# Drop me an email, srikanth.sadhu@googlemail.com for any comments, suggestions, etc.

# Instructions/Config required prior to use...

After cloning this repo...
Create a new gemset, i.e. 'ruby-capybara-site-prism'
Use the newly created gemset
gem install bundler
bundle install
Please ensure that you have the latest chromedriver...

https://sites.google.com/a/chromium.org/chromedriver/downloads

Then to run a specific test...

bundle exec cucumber

Can run with profiles and Tags too for future.
