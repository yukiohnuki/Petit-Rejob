require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get admin_user_login" do
    get :admin_user_login
    assert_response :success
  end

end
