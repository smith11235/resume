require 'test_helper'

class LatexResumeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get source" do
    get :source
    assert_response :success
  end

  test "should get generate" do
    get :generate
    assert_response :success
  end

end
