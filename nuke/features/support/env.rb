Dir["/nuke/features/support/*.rb"].each { |file| require file }
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require "capybara/cucumber"
require "capybara/poltergeist"
require "selenium/webdriver"
# add @firebug in scenario which you want to debug with firebug 
require "capybara/firebug"
# makes a screenshot of failed scenario ( I turned it off so if you want
# to use it you have to put either
# 1. screenshot_and_save_page
# 2. screenshot_a-d_open_ima/cucumber 
# in the given step
require "capybara-screenshot"
require 'capybara-screenshot/cucumber'
require "chunky_png"
require "fileutils"

Capybara::Screenshot.autosave_on_failure = false

include ChunkyPNG

Before do
  FileUtils.rm_f 'generated.png'
end

# pass environment variables to control which browser is used for testing.
# Default is HEADLESS/POLTERGEIST
# usage: firefox=true bundle exec cucumber features/test.feature

if ENV['chrome']
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    options = {
      :js_errors => false,
      :timeout => 450,
      :debug => false,
      :inspector => false
    }
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
elsif ENV['firefox']
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
    options = {
      :js_errors => true,
      :timeout => 500,
      :debug => false,
      :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
elsif ENV['safari']
  Capybara.default_driver = :safari
  Capybara.register_driver :safari do |app|
    options = {
      :js_errors => false,
      :timeout => 450,
      :debug => false,
      :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end
elsif ENV['opera']
  Capybara.default_driver = :opera
  Capybara.register_driver :opera do |app|
    options = {
      :js_errors => false,
      :timeout => 450,
      :debug => false,
      :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :opera)
  end
elsif ENV['debug']
  Capybara.default_driver = :poltergeist_debug 
  Capybara.register_driver :poltergeist_debug do |app|
    options = {
      :js_errors => false,
      :timeout => 450,
      :debug => false,
      :inspector => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)
  end
elsif
  Capybara.default_driver = :poltergeist
  Capybara.register_driver :poltergeist do |app|
    options = {
      :js_errors => false,
      :timeout => 450,
      :debug => false,
      :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
      :inspector => false,
    }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end

