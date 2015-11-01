require 'test_helper'

class VaccineChildrenControllerTest < ActionController::TestCase
  setup do
    @vaccine_child = vaccine_children(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vaccine_children)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaccine_child" do
    assert_difference('VaccineChild.count') do
      post :create, vaccine_child: { Child_id: @vaccine_child.Child_id, Medical_center_id: @vaccine_child.Medical_center_id, Vaccine_plan_id: @vaccine_child.Vaccine_plan_id, date_register: @vaccine_child.date_register, date_suggested: @vaccine_child.date_suggested, dosis_vacune: @vaccine_child.dosis_vacune, height_picture: @vaccine_child.height_picture, picture: @vaccine_child.picture, status: @vaccine_child.status, type_picture: @vaccine_child.type_picture, weight_picture: @vaccine_child.weight_picture }
    end

    assert_redirected_to vaccine_child_path(assigns(:vaccine_child))
  end

  test "should show vaccine_child" do
    get :show, id: @vaccine_child
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaccine_child
    assert_response :success
  end

  test "should update vaccine_child" do
    patch :update, id: @vaccine_child, vaccine_child: { Child_id: @vaccine_child.Child_id, Medical_center_id: @vaccine_child.Medical_center_id, Vaccine_plan_id: @vaccine_child.Vaccine_plan_id, date_register: @vaccine_child.date_register, date_suggested: @vaccine_child.date_suggested, dosis_vacune: @vaccine_child.dosis_vacune, height_picture: @vaccine_child.height_picture, picture: @vaccine_child.picture, status: @vaccine_child.status, type_picture: @vaccine_child.type_picture, weight_picture: @vaccine_child.weight_picture }
    assert_redirected_to vaccine_child_path(assigns(:vaccine_child))
  end

  test "should destroy vaccine_child" do
    assert_difference('VaccineChild.count', -1) do
      delete :destroy, id: @vaccine_child
    end

    assert_redirected_to vaccine_children_path
  end
end
