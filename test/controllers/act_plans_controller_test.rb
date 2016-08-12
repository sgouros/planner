require 'test_helper'

class ActPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @act_plan = act_plans(:one)
  end

  test "should get index" do
    get act_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_act_plan_url
    assert_response :success
  end

  test "should create act_plan" do
    assert_difference('ActPlan.count') do
      post act_plans_url, params: { act_plan: { code: @act_plan.code, description: @act_plan.description, target_id: @act_plan.target_id } }
    end

    assert_redirected_to act_plan_url(ActPlan.last)
  end

  test "should show act_plan" do
    get act_plan_url(@act_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_act_plan_url(@act_plan)
    assert_response :success
  end

  test "should update act_plan" do
    patch act_plan_url(@act_plan), params: { act_plan: { code: @act_plan.code, description: @act_plan.description, target_id: @act_plan.target_id } }
    assert_redirected_to act_plan_url(@act_plan)
  end

  test "should destroy act_plan" do
    assert_difference('ActPlan.count', -1) do
      delete act_plan_url(@act_plan)
    end

    assert_redirected_to act_plans_url
  end
end
