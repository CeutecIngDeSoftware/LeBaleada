require 'test_helper'

class FollowRestaurantsControllerTest < ActionController::TestCase
  setup do
    @follow_restaurant = follow_restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:follow_restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create follow_restaurant" do
    assert_difference('FollowRestaurant.count') do
      post :create, follow_restaurant: { restaurant_id: @follow_restaurant.restaurant_id, user_id: @follow_restaurant.user_id }
    end

    assert_redirected_to follow_restaurant_path(assigns(:follow_restaurant))
  end

  test "should show follow_restaurant" do
    get :show, id: @follow_restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @follow_restaurant
    assert_response :success
  end

  test "should update follow_restaurant" do
    patch :update, id: @follow_restaurant, follow_restaurant: { restaurant_id: @follow_restaurant.restaurant_id, user_id: @follow_restaurant.user_id }
    assert_redirected_to follow_restaurant_path(assigns(:follow_restaurant))
  end

  test "should destroy follow_restaurant" do
    assert_difference('FollowRestaurant.count', -1) do
      delete :destroy, id: @follow_restaurant
    end

    assert_redirected_to follow_restaurants_path
  end
end
