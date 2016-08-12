require 'test_helper'

class ScheduleActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_action = schedule_actions(:one)
  end

  test "should get index" do
    get schedule_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_schedule_action_url
    assert_response :success
  end

  test "should create schedule_action" do
    assert_difference('ScheduleAction.count') do
      post schedule_actions_url, params: { schedule_action: { description: @schedule_action.description, end_date: @schedule_action.end_date, schedule_id: @schedule_action.schedule_id, start_date: @schedule_action.start_date } }
    end

    assert_redirected_to schedule_action_url(ScheduleAction.last)
  end

  test "should show schedule_action" do
    get schedule_action_url(@schedule_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedule_action_url(@schedule_action)
    assert_response :success
  end

  test "should update schedule_action" do
    patch schedule_action_url(@schedule_action), params: { schedule_action: { description: @schedule_action.description, end_date: @schedule_action.end_date, schedule_id: @schedule_action.schedule_id, start_date: @schedule_action.start_date } }
    assert_redirected_to schedule_action_url(@schedule_action)
  end

  test "should destroy schedule_action" do
    assert_difference('ScheduleAction.count', -1) do
      delete schedule_action_url(@schedule_action)
    end

    assert_redirected_to schedule_actions_url
  end
end
