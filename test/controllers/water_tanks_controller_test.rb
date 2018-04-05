require 'test_helper'

class WaterTanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @water_tank = water_tanks(:one)
  end

  test "should get index" do
    get water_tanks_url
    assert_response :success
  end

  test "should get new" do
    get new_water_tank_url
    assert_response :success
  end

  test "should create water_tank" do
    assert_difference('WaterTank.count') do
      post water_tanks_url, params: { water_tank: { address: @water_tank.address, latitude: @water_tank.latitude, longitude: @water_tank.longitude, neighborhood: @water_tank.neighborhood, nickname: @water_tank.nickname } }
    end

    assert_redirected_to water_tank_url(WaterTank.last)
  end

  test "should show water_tank" do
    get water_tank_url(@water_tank)
    assert_response :success
  end

  test "should get edit" do
    get edit_water_tank_url(@water_tank)
    assert_response :success
  end

  test "should update water_tank" do
    patch water_tank_url(@water_tank), params: { water_tank: { address: @water_tank.address, latitude: @water_tank.latitude, longitude: @water_tank.longitude, neighborhood: @water_tank.neighborhood, nickname: @water_tank.nickname } }
    assert_redirected_to water_tank_url(@water_tank)
  end

  test "should destroy water_tank" do
    assert_difference('WaterTank.count', -1) do
      delete water_tank_url(@water_tank)
    end

    assert_redirected_to water_tanks_url
  end
end
