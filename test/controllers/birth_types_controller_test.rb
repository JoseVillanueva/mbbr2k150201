require 'test_helper'

class BirthTypesControllerTest < ActionController::TestCase
  setup do
    @birth_type = birth_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birth_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birth_type" do
    assert_difference('BirthType.count') do
      post :create, birth_type: { name: @birth_type.name }
    end

    assert_redirected_to birth_type_path(assigns(:birth_type))
  end

  test "should show birth_type" do
    get :show, id: @birth_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @birth_type
    assert_response :success
  end

  test "should update birth_type" do
    patch :update, id: @birth_type, birth_type: { name: @birth_type.name }
    assert_redirected_to birth_type_path(assigns(:birth_type))
  end

  test "should destroy birth_type" do
    assert_difference('BirthType.count', -1) do
      delete :destroy, id: @birth_type
    end

    assert_redirected_to birth_types_path
  end
end
