require 'test_helper'

class ChildDevelopmentPeriodsControllerTest < ActionController::TestCase
  setup do
    @child_development_period = child_development_periods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_development_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_development_period" do
    assert_difference('ChildDevelopmentPeriod.count') do
      post :create, child_development_period: { Child_development_id: @child_development_period.Child_development_id, Child_id: @child_development_period.Child_id, Doctor_id: @child_development_period.Doctor_id, Medical_center_id: @child_development_period.Medical_center_id, date_contol: @child_development_period.date_contol, head_circunference: @child_development_period.head_circunference, size: @child_development_period.size, weight: @child_development_period.weight }
    end

    assert_redirected_to child_development_period_path(assigns(:child_development_period))
  end

  test "should show child_development_period" do
    get :show, id: @child_development_period
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_development_period
    assert_response :success
  end

  test "should update child_development_period" do
    patch :update, id: @child_development_period, child_development_period: { Child_development_id: @child_development_period.Child_development_id, Child_id: @child_development_period.Child_id, Doctor_id: @child_development_period.Doctor_id, Medical_center_id: @child_development_period.Medical_center_id, date_contol: @child_development_period.date_contol, head_circunference: @child_development_period.head_circunference, size: @child_development_period.size, weight: @child_development_period.weight }
    assert_redirected_to child_development_period_path(assigns(:child_development_period))
  end

  test "should destroy child_development_period" do
    assert_difference('ChildDevelopmentPeriod.count', -1) do
      delete :destroy, id: @child_development_period
    end

    assert_redirected_to child_development_periods_path
  end
end
