require 'test_helper'

class FoodReviewsControllerTest < ActionController::TestCase
  setup do
    @food_review = food_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_review" do
    assert_difference('FoodReview.count') do
      post :create, food_review: { comment: @food_review.comment, food_id: @food_review.food_id, price: @food_review.price, quantity: @food_review.quantity, real_pic: @food_review.real_pic, restaurant_id: @food_review.restaurant_id, taste: @food_review.taste }
    end

    assert_redirected_to food_review_path(assigns(:food_review))
  end

  test "should show food_review" do
    get :show, id: @food_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_review
    assert_response :success
  end

  test "should update food_review" do
    patch :update, id: @food_review, food_review: { comment: @food_review.comment, food_id: @food_review.food_id, price: @food_review.price, quantity: @food_review.quantity, real_pic: @food_review.real_pic, restaurant_id: @food_review.restaurant_id, taste: @food_review.taste }
    assert_redirected_to food_review_path(assigns(:food_review))
  end

  test "should destroy food_review" do
    assert_difference('FoodReview.count', -1) do
      delete :destroy, id: @food_review
    end

    assert_redirected_to food_reviews_path
  end
end
