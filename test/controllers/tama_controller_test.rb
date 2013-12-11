require 'test_helper'

class TamaControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get creation_tama" do
    get :creation_tama
    assert_response :success
  end

end
