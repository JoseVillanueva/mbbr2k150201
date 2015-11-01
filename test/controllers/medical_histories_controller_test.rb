require 'test_helper'

class MedicalHistoriesControllerTest < ActionController::TestCase
  setup do
    @medical_history = medical_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_history" do
    assert_difference('MedicalHistory.count') do
      post :create, medical_history: { Child_id: @medical_history.Child_id, Doctor_id: @medical_history.Doctor_id, Health_problem_id: @medical_history.Health_problem_id, Medical_center_id: @medical_history.Medical_center_id, Medical_exam_id: @medical_history.Medical_exam_id, Medical_insurance_id: @medical_history.Medical_insurance_id, Medicine_id: @medical_history.Medicine_id, date_register: @medical_history.date_register, description: @medical_history.description, height_picture: @medical_history.height_picture, picture: @medical_history.picture, type_picture: @medical_history.type_picture, weight_picture: @medical_history.weight_picture }
    end

    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should show medical_history" do
    get :show, id: @medical_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_history
    assert_response :success
  end

  test "should update medical_history" do
    patch :update, id: @medical_history, medical_history: { Child_id: @medical_history.Child_id, Doctor_id: @medical_history.Doctor_id, Health_problem_id: @medical_history.Health_problem_id, Medical_center_id: @medical_history.Medical_center_id, Medical_exam_id: @medical_history.Medical_exam_id, Medical_insurance_id: @medical_history.Medical_insurance_id, Medicine_id: @medical_history.Medicine_id, date_register: @medical_history.date_register, description: @medical_history.description, height_picture: @medical_history.height_picture, picture: @medical_history.picture, type_picture: @medical_history.type_picture, weight_picture: @medical_history.weight_picture }
    assert_redirected_to medical_history_path(assigns(:medical_history))
  end

  test "should destroy medical_history" do
    assert_difference('MedicalHistory.count', -1) do
      delete :destroy, id: @medical_history
    end

    assert_redirected_to medical_histories_path
  end
end
