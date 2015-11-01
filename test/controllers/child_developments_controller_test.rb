require 'test_helper'

class ChildDevelopmentsControllerTest < ActionController::TestCase
  setup do
    @child_development = child_developments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_developments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_development" do
    assert_difference('ChildDevelopment.count') do
      post :create, child_development: { months: @child_development.months, name: @child_development.name }
    end

    assert_redirected_to child_development_path(assigns(:child_development))
  end

  test "should show child_development" do
    get :show, id: @child_development
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_development
    assert_response :success
  end

  test "should update child_development" do
    patch :update, id: @child_development, child_development: { months: @child_development.months, name: @child_development.name }
    assert_redirected_to child_development_path(assigns(:child_development))
  end

  test "should destroy child_development" do
    assert_difference('ChildDevelopment.count', -1) do
      delete :destroy, id: @child_development
    end

    assert_redirected_to child_developments_path
  end
end
