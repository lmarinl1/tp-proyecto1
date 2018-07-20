require 'test_helper'

class PositionControllerTest < ActionDispatch::IntegrationTest
  test "should get getPosition" do
    get position_getPosition_url
    assert_response :success
  end

end
