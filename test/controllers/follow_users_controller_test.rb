require 'test_helper'

class FollowUsersControllerTest < ActionController::TestCase
  setup do
    @follow_user = follow_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:follow_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create follow_user" do
    assert_difference('FollowUser.count') do
      post :create, follow_user: { follower_id: @follow_user.follower_id, following_id: @follow_user.following_id }
    end

    assert_redirected_to follow_user_path(assigns(:follow_user))
  end

  test "should show follow_user" do
    get :show, id: @follow_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @follow_user
    assert_response :success
  end

  test "should update follow_user" do
    patch :update, id: @follow_user, follow_user: { follower_id: @follow_user.follower_id, following_id: @follow_user.following_id }
    assert_redirected_to follow_user_path(assigns(:follow_user))
  end

  test "should destroy follow_user" do
    assert_difference('FollowUser.count', -1) do
      delete :destroy, id: @follow_user
    end

    assert_redirected_to follow_users_path
  end
end
