require 'test_helper'

class ContractUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_update = contract_updates(:one)
  end

  test "should get index" do
    get contract_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_update_url
    assert_response :success
  end

  test "should create contract_update" do
    assert_difference('ContractUpdate.count') do
      post contract_updates_url, params: { contract_update: { amount: @contract_update.amount, comments: @contract_update.comments, contract_id: @contract_update.contract_id, start_date: @contract_update.start_date, update_version: @contract_update.update_version } }
    end

    assert_redirected_to contract_update_url(ContractUpdate.last)
  end

  test "should show contract_update" do
    get contract_update_url(@contract_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_update_url(@contract_update)
    assert_response :success
  end

  test "should update contract_update" do
    patch contract_update_url(@contract_update), params: { contract_update: { amount: @contract_update.amount, comments: @contract_update.comments, contract_id: @contract_update.contract_id, start_date: @contract_update.start_date, update_version: @contract_update.update_version } }
    assert_redirected_to contract_update_url(@contract_update)
  end

  test "should destroy contract_update" do
    assert_difference('ContractUpdate.count', -1) do
      delete contract_update_url(@contract_update)
    end

    assert_redirected_to contract_updates_url
  end
end
