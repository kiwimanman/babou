require 'test_helper'

class UnitControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get hp:int" do
    get :hp:int
    assert_response :success
  end

end
