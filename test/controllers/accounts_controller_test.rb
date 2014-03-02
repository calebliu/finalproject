require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get overview" do
    get :overview
    assert_response :success
  end

  test "should get transactions" do
    get :transactions
    assert_response :success
  end

  test "should get budget" do
    get :budget
    assert_response :success
  end

  test "should get goals" do
    get :goals
    assert_response :success
  end

end
