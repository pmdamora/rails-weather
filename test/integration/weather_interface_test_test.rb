require 'test_helper'

class WeatherInterfaceTestTest < ActionDispatch::IntegrationTest
  test "weather interface" do
    get root_path
    assert_select 'div.weather-col'
    assert_select 'h4.card-title'
    assert_select 'h6.card-subtitle'
    assert_select 'div.temperature'
  end

  test "should add city" do
    # Valid submission
    name = "Tokyo"
    assert_difference 'City.count', 1 do
      post cities_path, params: { city: { name: name } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match name, response.body
  end

  test "should add city with ajax" do
    name = "Tokyo"
    assert_difference 'City.count', 1 do
      post cities_path, xhr: true, params: { city: { name: name } }
    end
    assert_match name, response.body
  end

  test "should not add city with invalid submission" do
    assert_no_difference 'City.count' do
      post cities_path, params: { city: { name: "" } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_select 'div.alert'
  end

  test "should not add city with invalid submission with ajax" do
    assert_no_difference 'City.count', 1 do
      post cities_path, xhr: true, params: { city: { name: "" } }
    end
  end
end
