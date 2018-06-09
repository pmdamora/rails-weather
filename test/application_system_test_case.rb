require "test_helper"
require "capybara/webkit"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara::Webkit.configure do |config|
    config.raise_javascript_errors = false
  end
  driven_by :webkit
end
