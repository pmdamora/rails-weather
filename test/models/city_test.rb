require 'test_helper'

class CityTest < ActiveSupport::TestCase

  def setup
    @city = cities(:one)
  end

  test "should be valid" do
    assert @city.valid?
  end

  test "name should be present" do
    @city.name = "     "
    assert_not @city.valid?
  end

  test "name should be unique" do
    dup_city = @city.dup
    dup_city.name = @city.name.upcase
    @city.save
    assert_not dup_city.valid?
  end

  test "name should not be too long" do
    @city.name = "a" * 51
    assert_not @city.valid?
  end

  test "names should be saved as lower-case" do
    mixed_case_name = "FoO BaR cITy"
    @city.name = mixed_case_name
    @city.save
    assert_equal mixed_case_name.downcase, @city.reload.name
  end

  test "timezone should be present" do
    @city.timezone = "    "
    assert_not @city.valid?
  end

  test "timezone should not be too long" do
    @city.timezone = "a" * 51
    assert_not @city.valid?
  end

  test "temperature should return a valid temperature integer" do
    assert_includes -100..150, @city.temperature
  end

end
