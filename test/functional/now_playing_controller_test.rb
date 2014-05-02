require 'test_helper'

class NowPlayingControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
