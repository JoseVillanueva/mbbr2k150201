require 'test_helper'

class MedicalInsurancesControllerTest < ActionController::TestCase
  setup do
    @medical_insurance = medical_insurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_insurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_insurance" do
    assert_difference('MedicalInsurance.count') do
      post :create, medical_insurance: { address: @medical_insurance.address, email: @medical_insurance.email, name: @medical_insurance.name, nom_seguro: @medical_insurance.nom_seguro, tax_identification: @medical_insurance.tax_identification, website: @medical_insurance.website }
    end

    assert_redirected_to medical_insurance_path(assigns(:medical_insurance))
  end

  test "should show medical_insurance" do
    get :show, id: @medical_insurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_insurance
    assert_response :success
  end

  test "should update medical_insurance" do
    patch :update, id: @medical_insurance, medical_insurance: { address: @medical_insurance.address, email: @medical_insurance.email, name: @medical_insurance.name, nom_seguro: @medical_insurance.nom_seguro, tax_identification: @medical_insurance.tax_identification, website: @medical_insurance.website }
    assert_redirected_to medical_insurance_path(assigns(:medical_insurance))
  end

  test "should destroy medical_insurance" do
    assert_difference('MedicalInsurance.count', -1) do
      delete :destroy, id: @medical_insurance
    end

    assert_redirected_to medical_insurances_path
  end
end
