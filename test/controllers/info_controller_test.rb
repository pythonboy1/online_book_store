require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get skill" do
    get :skill
    assert_response :success
  end

end
