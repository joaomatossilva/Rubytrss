require 'test_helper'

class CinemaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get top_rated" do
    get :top_rated
    assert_response :success
  end

  test "should get popular" do
    get :popular
    assert_response :success
  end

  test "should get now_playing" do
    get :now_playing
    assert_response :success
  end

end
