require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @city = cities(:one)
  end
end
