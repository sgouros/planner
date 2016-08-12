class ExpenceForecastsController < ApplicationController
  before_action :set_expence_forecast, only: [:show, :edit, :update, :destroy]

  # GET /expence_forecasts
  # GET /expence_forecasts.json
  def index
    @expence_forecasts = ExpenceForecast.all
  end

  # GET /expence_forecasts/1
  # GET /expence_forecasts/1.json
  def show
  end

  # GET /expence_forecasts/new
  def new
    @expence_forecast = ExpenceForecast.new
  end

  # GET /expence_forecasts/1/edit
  def edit
  end

  # POST /expence_forecasts
  # POST /expence_forecasts.json
  def create
    @expence_forecast = ExpenceForecast.new(expence_forecast_params)

    respond_to do |format|
      if @expence_forecast.save
        format.html { redirect_to @expence_forecast, notice: 'Expence forecast was successfully created.' }
        format.json { render :show, status: :created, location: @expence_forecast }
      else
        format.html { render :new }
        format.json { render json: @expence_forecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expence_forecasts/1
  # PATCH/PUT /expence_forecasts/1.json
  def update
    respond_to do |format|
      if @expence_forecast.update(expence_forecast_params)
        format.html { redirect_to @expence_forecast, notice: 'Expence forecast was successfully updated.' }
        format.json { render :show, status: :ok, location: @expence_forecast }
      else
        format.html { render :edit }
        format.json { render json: @expence_forecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expence_forecasts/1
  # DELETE /expence_forecasts/1.json
  def destroy
    @expence_forecast.destroy
    respond_to do |format|
      format.html { redirect_to expence_forecasts_url, notice: 'Expence forecast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expence_forecast
      @expence_forecast = ExpenceForecast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expence_forecast_params
      params.require(:expence_forecast).permit(:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :next_year, :next_two_years, :next_three_years, :next_four_years, :next_five_years, :subproject_id)
    end
end
