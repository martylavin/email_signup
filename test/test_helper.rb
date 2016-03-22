
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require "selenium-webdriver"
require "minitest/reporters"
require 'capybara-screenshot/minitest'
#require 'capybara-screenshot/testunit'
#Minitest::Reporters.use!
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # spec-like progress


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  Capybara.default_driver = :selenium 
  #Capybara.default_driver = :rack_test
  Capybara.use_default_driver
  #Capybara.default_driver = :selenium 
  def teardown
    Capybara.reset_sessions!
    #Capybara.default_driver = :rack_test
    Capybara.default_driver = :selenium 
    Capybara.use_default_driver
  end

  #Capybara.register_driver :selenium do |app|
  #  Capybara::selenium::Driver.new(app, :browser => :chrome)
  #end

end
