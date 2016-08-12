require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { IBAN: @project.IBAN, PPI_payments: @project.PPI_payments, act_id: @project.act_id, budget: @project.budget, budget_history: @project.budget_history, classification_code: @project.classification_code, code: @project.code, collective_decision_id: @project.collective_decision_id, comments: @project.comments, credit_first_quarter: @project.credit_first_quarter, credit_fourth_quarter: @project.credit_fourth_quarter, credit_limit_of_implementation_body: @project.credit_limit_of_implementation_body, credit_second_quarter: @project.credit_second_quarter, credit_third_quarter: @project.credit_third_quarter, expense_code: @project.expense_code, has_multiple_collective_decisions: @project.has_multiple_collective_decisions, iis_code: @project.iis_code, incorporation_date: @project.incorporation_date, incorporation_protocol: @project.incorporation_protocol, payments_until_last_year_according_to_sae: @project.payments_until_last_year_according_to_sae, phase_code: @project.phase_code, prefecture_code: @project.prefecture_code, priority_code: @project.priority_code, proposed_credits: @project.proposed_credits, supervisor_body_id: @project.supervisor_body_id, title: @project.title } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { IBAN: @project.IBAN, PPI_payments: @project.PPI_payments, act_id: @project.act_id, budget: @project.budget, budget_history: @project.budget_history, classification_code: @project.classification_code, code: @project.code, collective_decision_id: @project.collective_decision_id, comments: @project.comments, credit_first_quarter: @project.credit_first_quarter, credit_fourth_quarter: @project.credit_fourth_quarter, credit_limit_of_implementation_body: @project.credit_limit_of_implementation_body, credit_second_quarter: @project.credit_second_quarter, credit_third_quarter: @project.credit_third_quarter, expense_code: @project.expense_code, has_multiple_collective_decisions: @project.has_multiple_collective_decisions, iis_code: @project.iis_code, incorporation_date: @project.incorporation_date, incorporation_protocol: @project.incorporation_protocol, payments_until_last_year_according_to_sae: @project.payments_until_last_year_according_to_sae, phase_code: @project.phase_code, prefecture_code: @project.prefecture_code, priority_code: @project.priority_code, proposed_credits: @project.proposed_credits, supervisor_body_id: @project.supervisor_body_id, title: @project.title } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
