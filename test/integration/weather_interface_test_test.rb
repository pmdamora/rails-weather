require 'test_helper'

class WeatherInterfaceTestTest < ActionDispatch::IntegrationTest
  test "weather interface" do
    get root_path
    assert_select 'div.weather-col'
    assert_select 'h4.card-title'
    assert_select 'h6.card-subtitle'
    assert_select 'div.temperature'
  end
end
