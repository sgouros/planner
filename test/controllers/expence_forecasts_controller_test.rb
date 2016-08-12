require 'test_helper'

class ExpenceForecastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expence_forecast = expence_forecasts(:one)
  end

  test "should get index" do
    get expence_forecasts_url
    assert_response :success
  end

  test "should get new" do
    get new_expence_forecast_url
    assert_response :success
  end

  test "should create expence_forecast" do
    assert_difference('ExpenceForecast.count') do
      post expence_forecasts_url, params: { expence_forecast: { april: @expence_forecast.april, august: @expence_forecast.august, december: @expence_forecast.december, february: @expence_forecast.february, january: @expence_forecast.january, july: @expence_forecast.july, june: @expence_forecast.june, march: @expence_forecast.march, may: @expence_forecast.may, next_five_years: @expence_forecast.next_five_years, next_four_years: @expence_forecast.next_four_years, next_three_years: @expence_forecast.next_three_years, next_two_years: @expence_forecast.next_two_years, next_year: @expence_forecast.next_year, november: @expence_forecast.november, october: @expence_forecast.october, september: @expence_forecast.september, subproject_id: @expence_forecast.subproject_id } }
    end

    assert_redirected_to expence_forecast_url(ExpenceForecast.last)
  end

  test "should show expence_forecast" do
    get expence_forecast_url(@expence_forecast)
    assert_response :success
  end

  test "should get edit" do
    get edit_expence_forecast_url(@expence_forecast)
    assert_response :success
  end

  test "should update expence_forecast" do
    patch expence_forecast_url(@expence_forecast), params: { expence_forecast: { april: @expence_forecast.april, august: @expence_forecast.august, december: @expence_forecast.december, february: @expence_forecast.february, january: @expence_forecast.january, july: @expence_forecast.july, june: @expence_forecast.june, march: @expence_forecast.march, may: @expence_forecast.may, next_five_years: @expence_forecast.next_five_years, next_four_years: @expence_forecast.next_four_years, next_three_years: @expence_forecast.next_three_years, next_two_years: @expence_forecast.next_two_years, next_year: @expence_forecast.next_year, november: @expence_forecast.november, october: @expence_forecast.october, september: @expence_forecast.september, subproject_id: @expence_forecast.subproject_id } }
    assert_redirected_to expence_forecast_url(@expence_forecast)
  end

  test "should destroy expence_forecast" do
    assert_difference('ExpenceForecast.count', -1) do
      delete expence_forecast_url(@expence_forecast)
    end

    assert_redirected_to expence_forecasts_url
  end
end
