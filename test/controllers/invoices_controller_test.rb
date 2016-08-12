require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { amount: @invoice.amount, code: @invoice.code, contractor_fiscal_code: @invoice.contractor_fiscal_code, contractor_name: @invoice.contractor_name, date_of_issue: @invoice.date_of_issue, description: @invoice.description, payoff_deadline: @invoice.payoff_deadline, undertaking_certificate_id: @invoice.undertaking_certificate_id } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { amount: @invoice.amount, code: @invoice.code, contractor_fiscal_code: @invoice.contractor_fiscal_code, contractor_name: @invoice.contractor_name, date_of_issue: @invoice.date_of_issue, description: @invoice.description, payoff_deadline: @invoice.payoff_deadline, undertaking_certificate_id: @invoice.undertaking_certificate_id } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
