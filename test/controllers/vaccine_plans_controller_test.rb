require 'test_helper'

class VaccinePlansControllerTest < ActionController::TestCase
  setup do
    @vaccine_plan = vaccine_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vaccine_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaccine_plan" do
    assert_difference('VaccinePlan.count') do
      post :create, vaccine_plan: { Vaccine_id: @vaccine_plan.Vaccine_id, nmes: @vaccine_plan.nmes }
    end

    assert_redirected_to vaccine_plan_path(assigns(:vaccine_plan))
  end

  test "should show vaccine_plan" do
    get :show, id: @vaccine_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaccine_plan
    assert_response :success
  end

  test "should update vaccine_plan" do
    patch :update, id: @vaccine_plan, vaccine_plan: { Vaccine_id: @vaccine_plan.Vaccine_id, nmes: @vaccine_plan.nmes }
    assert_redirected_to vaccine_plan_path(assigns(:vaccine_plan))
  end

  test "should destroy vaccine_plan" do
    assert_difference('VaccinePlan.count', -1) do
      delete :destroy, id: @vaccine_plan
    end

    assert_redirected_to vaccine_plans_path
  end
end
