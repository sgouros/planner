require 'test_helper'

class SubprojectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subproject = subprojects(:one)
  end

  test "should get index" do
    get subprojects_url
    assert_response :success
  end

  test "should get new" do
    get new_subproject_url
    assert_response :success
  end

  test "should create subproject" do
    assert_difference('Subproject.count') do
      post subprojects_url, params: { subproject: { accountable_id: @subproject.accountable_id, amendments: @subproject.amendments, budget: @subproject.budget, code: @subproject.code, comments: @subproject.comments, description: @subproject.description, implementation_body_id: @subproject.implementation_body_id, implementation_code: @subproject.implementation_code, incorporation_date: @subproject.incorporation_date, incorporation_protocol: @subproject.incorporation_protocol, phase_code: @subproject.phase_code, prefecture_code: @subproject.prefecture_code, priority_code: @subproject.priority_code, progress_code: @subproject.progress_code, project_id: @subproject.project_id, proposed_badget: @subproject.proposed_badget, supervisor_body_id: @subproject.supervisor_body_id, title: @subproject.title } }
    end

    assert_redirected_to subproject_url(Subproject.last)
  end

  test "should show subproject" do
    get subproject_url(@subproject)
    assert_response :success
  end

  test "should get edit" do
    get edit_subproject_url(@subproject)
    assert_response :success
  end

  test "should update subproject" do
    patch subproject_url(@subproject), params: { subproject: { accountable_id: @subproject.accountable_id, amendments: @subproject.amendments, budget: @subproject.budget, code: @subproject.code, comments: @subproject.comments, description: @subproject.description, implementation_body_id: @subproject.implementation_body_id, implementation_code: @subproject.implementation_code, incorporation_date: @subproject.incorporation_date, incorporation_protocol: @subproject.incorporation_protocol, phase_code: @subproject.phase_code, prefecture_code: @subproject.prefecture_code, priority_code: @subproject.priority_code, progress_code: @subproject.progress_code, project_id: @subproject.project_id, proposed_badget: @subproject.proposed_badget, supervisor_body_id: @subproject.supervisor_body_id, title: @subproject.title } }
    assert_redirected_to subproject_url(@subproject)
  end

  test "should destroy subproject" do
    assert_difference('Subproject.count', -1) do
      delete subproject_url(@subproject)
    end

    assert_redirected_to subprojects_url
  end
end
