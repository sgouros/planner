require 'test_helper'

class ContractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractor = contractors(:one)
  end

  test "should get index" do
    get contractors_url
    assert_response :success
  end

  test "should get new" do
    get new_contractor_url
    assert_response :success
  end

  test "should create contractor" do
    assert_difference('Contractor.count') do
      post contractors_url, params: { contractor: { address: @contractor.address, comments: @contractor.comments, contact_person: @contractor.contact_person, email: @contractor.email, fax: @contractor.fax, fiscal_code: @contractor.fiscal_code, name: @contractor.name, phone: @contractor.phone, tax_department: @contractor.tax_department } }
    end

    assert_redirected_to contractor_url(Contractor.last)
  end

  test "should show contractor" do
    get contractor_url(@contractor)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractor_url(@contractor)
    assert_response :success
  end

  test "should update contractor" do
    patch contractor_url(@contractor), params: { contractor: { address: @contractor.address, comments: @contractor.comments, contact_person: @contractor.contact_person, email: @contractor.email, fax: @contractor.fax, fiscal_code: @contractor.fiscal_code, name: @contractor.name, phone: @contractor.phone, tax_department: @contractor.tax_department } }
    assert_redirected_to contractor_url(@contractor)
  end

  test "should destroy contractor" do
    assert_difference('Contractor.count', -1) do
      delete contractor_url(@contractor)
    end

    assert_redirected_to contractors_url
  end
end
