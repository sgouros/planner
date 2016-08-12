require 'test_helper'

class AccountablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accountable = accountables(:one)
  end

  test "should get index" do
    get accountables_url
    assert_response :success
  end

  test "should get new" do
    get new_accountable_url
    assert_response :success
  end

  test "should create accountable" do
    assert_difference('Accountable.count') do
      post accountables_url, params: { accountable: { email: @accountable.email, fax: @accountable.fax, name: @accountable.name, organisation_id: @accountable.organisation_id, phone: @accountable.phone, surname: @accountable.surname } }
    end

    assert_redirected_to accountable_url(Accountable.last)
  end

  test "should show accountable" do
    get accountable_url(@accountable)
    assert_response :success
  end

  test "should get edit" do
    get edit_accountable_url(@accountable)
    assert_response :success
  end

  test "should update accountable" do
    patch accountable_url(@accountable), params: { accountable: { email: @accountable.email, fax: @accountable.fax, name: @accountable.name, organisation_id: @accountable.organisation_id, phone: @accountable.phone, surname: @accountable.surname } }
    assert_redirected_to accountable_url(@accountable)
  end

  test "should destroy accountable" do
    assert_difference('Accountable.count', -1) do
      delete accountable_url(@accountable)
    end

    assert_redirected_to accountables_url
  end
end
