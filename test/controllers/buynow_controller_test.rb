require 'test_helper'

class BuynowControllerTest < ActionController::TestCase
  test "should get buy" do
    get :buy
    assert_response :success
  end

end
