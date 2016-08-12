require 'test_helper'

class UndertakingCertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @undertaking_certificate = undertaking_certificates(:one)
  end

  test "should get index" do
    get undertaking_certificates_url
    assert_response :success
  end

  test "should get new" do
    get new_undertaking_certificate_url
    assert_response :success
  end

  test "should create undertaking_certificate" do
    assert_difference('UndertakingCertificate.count') do
      post undertaking_certificates_url, params: { undertaking_certificate: { amount: @undertaking_certificate.amount, protocol: @undertaking_certificate.protocol, start_date: @undertaking_certificate.start_date, subproject_id: @undertaking_certificate.subproject_id, title: @undertaking_certificate.title } }
    end

    assert_redirected_to undertaking_certificate_url(UndertakingCertificate.last)
  end

  test "should show undertaking_certificate" do
    get undertaking_certificate_url(@undertaking_certificate)
    assert_response :success
  end

  test "should get edit" do
    get edit_undertaking_certificate_url(@undertaking_certificate)
    assert_response :success
  end

  test "should update undertaking_certificate" do
    patch undertaking_certificate_url(@undertaking_certificate), params: { undertaking_certificate: { amount: @undertaking_certificate.amount, protocol: @undertaking_certificate.protocol, start_date: @undertaking_certificate.start_date, subproject_id: @undertaking_certificate.subproject_id, title: @undertaking_certificate.title } }
    assert_redirected_to undertaking_certificate_url(@undertaking_certificate)
  end

  test "should destroy undertaking_certificate" do
    assert_difference('UndertakingCertificate.count', -1) do
      delete undertaking_certificate_url(@undertaking_certificate)
    end

    assert_redirected_to undertaking_certificates_url
  end
end
