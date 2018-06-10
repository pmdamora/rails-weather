require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Weather App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Weather App"
  end

end
