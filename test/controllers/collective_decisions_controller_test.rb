require 'test_helper'

class CollectiveDecisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collective_decision = collective_decisions(:one)
  end

  test "should get index" do
    get collective_decisions_url
    assert_response :success
  end

  test "should get new" do
    get new_collective_decision_url
    assert_response :success
  end

  test "should create collective_decision" do
    assert_difference('CollectiveDecision.count') do
      post collective_decisions_url, params: { collective_decision: { code: @collective_decision.code, description: @collective_decision.description } }
    end

    assert_redirected_to collective_decision_url(CollectiveDecision.last)
  end

  test "should show collective_decision" do
    get collective_decision_url(@collective_decision)
    assert_response :success
  end

  test "should get edit" do
    get edit_collective_decision_url(@collective_decision)
    assert_response :success
  end

  test "should update collective_decision" do
    patch collective_decision_url(@collective_decision), params: { collective_decision: { code: @collective_decision.code, description: @collective_decision.description } }
    assert_redirected_to collective_decision_url(@collective_decision)
  end

  test "should destroy collective_decision" do
    assert_difference('CollectiveDecision.count', -1) do
      delete collective_decision_url(@collective_decision)
    end

    assert_redirected_to collective_decisions_url
  end
end
