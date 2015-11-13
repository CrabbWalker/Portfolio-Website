require 'test_helper'

class TwoprojectsControllerTest < ActionController::TestCase
  setup do
    @twoproject = twoprojects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twoprojects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twoproject" do
    assert_difference('Twoproject.count') do
      post :create, twoproject: { description: @twoproject.description }
    end

    assert_redirected_to twoproject_path(assigns(:twoproject))
  end

  test "should show twoproject" do
    get :show, id: @twoproject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twoproject
    assert_response :success
  end

  test "should update twoproject" do
    patch :update, id: @twoproject, twoproject: { description: @twoproject.description }
    assert_redirected_to twoproject_path(assigns(:twoproject))
  end

  test "should destroy twoproject" do
    assert_difference('Twoproject.count', -1) do
      delete :destroy, id: @twoproject
    end

    assert_redirected_to twoprojects_path
  end
end
