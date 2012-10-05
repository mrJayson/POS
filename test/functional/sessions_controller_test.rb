require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

end
