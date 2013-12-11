require 'test_helper'

class TamasControllerTest < ActionController::TestCase
  setup do
    @tama = tamas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tamas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tama" do
    assert_difference('Tama.count') do
      post :create, tama: {  }
    end

    assert_redirected_to tama_path(assigns(:tama))
  end

  test "should show tama" do
    get :show, id: @tama
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tama
    assert_response :success
  end

  test "should update tama" do
    patch :update, id: @tama, tama: {  }
    assert_redirected_to tama_path(assigns(:tama))
  end

  test "should destroy tama" do
    assert_difference('Tama.count', -1) do
      delete :destroy, id: @tama
    end

    assert_redirected_to tamas_path
  end
end
