require 'test_helper'

class MedicalExamsControllerTest < ActionController::TestCase
  setup do
    @medical_exam = medical_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_exam" do
    assert_difference('MedicalExam.count') do
      post :create, medical_exam: { name: @medical_exam.name, type: @medical_exam.type }
    end

    assert_redirected_to medical_exam_path(assigns(:medical_exam))
  end

  test "should show medical_exam" do
    get :show, id: @medical_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_exam
    assert_response :success
  end

  test "should update medical_exam" do
    patch :update, id: @medical_exam, medical_exam: { name: @medical_exam.name, type: @medical_exam.type }
    assert_redirected_to medical_exam_path(assigns(:medical_exam))
  end

  test "should destroy medical_exam" do
    assert_difference('MedicalExam.count', -1) do
      delete :destroy, id: @medical_exam
    end

    assert_redirected_to medical_exams_path
  end
end
