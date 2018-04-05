require 'test_helper'

class WaterTankLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @water_tank_location = water_tank_locations(:one)
  end

  test "should get index" do
    get water_tank_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_water_tank_location_url
    assert_response :success
  end

  test "should create water_tank_location" do
    assert_difference('WaterTankLocation.count') do
      post water_tank_locations_url, params: { water_tank_location: { info: @water_tank_location.info, latitude: @water_tank_location.latitude, longitude: @water_tank_location.longitude } }
    end

    assert_redirected_to water_tank_location_url(WaterTankLocation.last)
  end

  test "should show water_tank_location" do
    get water_tank_location_url(@water_tank_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_water_tank_location_url(@water_tank_location)
    assert_response :success
  end

  test "should update water_tank_location" do
    patch water_tank_location_url(@water_tank_location), params: { water_tank_location: { info: @water_tank_location.info, latitude: @water_tank_location.latitude, longitude: @water_tank_location.longitude } }
    assert_redirected_to water_tank_location_url(@water_tank_location)
  end

  test "should destroy water_tank_location" do
    assert_difference('WaterTankLocation.count', -1) do
      delete water_tank_location_url(@water_tank_location)
    end

    assert_redirected_to water_tank_locations_url
  end
end
