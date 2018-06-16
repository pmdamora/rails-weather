ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

require 'simplecov'
SimpleCov.start 'rails' do
  add_filter '/bin/'
  add_filter '/db/'
  add_filter '/test/' 
  add_filter '/app/channels/'
  add_filter '/app/jobs/'
  add_filter '/app/mailers/'
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include ApplicationHelper
end
