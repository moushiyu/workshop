require 'test_helper'

class AskControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

  test "should get finish" do
    get :finish
    assert_response :success
  end

end
