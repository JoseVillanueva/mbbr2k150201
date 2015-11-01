require 'test_helper'

class MedicalCentersControllerTest < ActionController::TestCase
  setup do
    @medical_center = medical_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_center" do
    assert_difference('MedicalCenter.count') do
      post :create, medical_center: { address: @medical_center.address, name: @medical_center.name, phone: @medical_center.phone, tax_identification: @medical_center.tax_identification }
    end

    assert_redirected_to medical_center_path(assigns(:medical_center))
  end

  test "should show medical_center" do
    get :show, id: @medical_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_center
    assert_response :success
  end

  test "should update medical_center" do
    patch :update, id: @medical_center, medical_center: { address: @medical_center.address, name: @medical_center.name, phone: @medical_center.phone, tax_identification: @medical_center.tax_identification }
    assert_redirected_to medical_center_path(assigns(:medical_center))
  end

  test "should destroy medical_center" do
    assert_difference('MedicalCenter.count', -1) do
      delete :destroy, id: @medical_center
    end

    assert_redirected_to medical_centers_path
  end
end
