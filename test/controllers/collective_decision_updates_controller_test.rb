require 'test_helper'

class CollectiveDecisionUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collective_decision_update = collective_decision_updates(:one)
  end

  test "should get index" do
    get collective_decision_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_collective_decision_update_url
    assert_response :success
  end

  test "should create collective_decision_update" do
    assert_difference('CollectiveDecisionUpdate.count') do
      post collective_decision_updates_url, params: { collective_decision_update: { collective_decision_id: @collective_decision_update.collective_decision_id, comments: @collective_decision_update.comments, description: @collective_decision_update.description, protocol: @collective_decision_update.protocol, start_date: @collective_decision_update.start_date } }
    end

    assert_redirected_to collective_decision_update_url(CollectiveDecisionUpdate.last)
  end

  test "should show collective_decision_update" do
    get collective_decision_update_url(@collective_decision_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_collective_decision_update_url(@collective_decision_update)
    assert_response :success
  end

  test "should update collective_decision_update" do
    patch collective_decision_update_url(@collective_decision_update), params: { collective_decision_update: { collective_decision_id: @collective_decision_update.collective_decision_id, comments: @collective_decision_update.comments, description: @collective_decision_update.description, protocol: @collective_decision_update.protocol, start_date: @collective_decision_update.start_date } }
    assert_redirected_to collective_decision_update_url(@collective_decision_update)
  end

  test "should destroy collective_decision_update" do
    assert_difference('CollectiveDecisionUpdate.count', -1) do
      delete collective_decision_update_url(@collective_decision_update)
    end

    assert_redirected_to collective_decision_updates_url
  end
end
