require 'test_helper'

class RefuelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refuel = refuels(:one)
  end

  test "should get index" do
    get refuels_url
    assert_response :success
  end

  test "should get new" do
    get new_refuel_url
    assert_response :success
  end

  test "should create refuel" do
    assert_difference('Refuel.count') do
      post refuels_url, params: { refuel: { distance: @refuel.distance, gasoline: @refuel.gasoline, price: @refuel.price, refuel_date: @refuel.refuel_date, user: @refuel.user } }
    end

    assert_redirected_to refuel_url(Refuel.last)
  end

  test "should show refuel" do
    get refuel_url(@refuel)
    assert_response :success
  end

  test "should get edit" do
    get edit_refuel_url(@refuel)
    assert_response :success
  end

  test "should update refuel" do
    patch refuel_url(@refuel), params: { refuel: { distance: @refuel.distance, gasoline: @refuel.gasoline, price: @refuel.price, refuel_date: @refuel.refuel_date, user: @refuel.user } }
    assert_redirected_to refuel_url(@refuel)
  end

  test "should destroy refuel" do
    assert_difference('Refuel.count', -1) do
      delete refuel_url(@refuel)
    end

    assert_redirected_to refuels_url
  end
end
