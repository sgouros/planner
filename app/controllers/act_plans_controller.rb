class ActPlansController < ApplicationController
  before_action :set_act_plan, only: [:show, :edit, :update, :destroy]

  # GET /act_plans
  # GET /act_plans.json
  def index
    @act_plans = ActPlan.all
  end

  # GET /act_plans/1
  # GET /act_plans/1.json
  def show
  end

  # GET /act_plans/new
  def new
    @act_plan = ActPlan.new
  end

  # GET /act_plans/1/edit
  def edit
  end

  # POST /act_plans
  # POST /act_plans.json
  def create
    @act_plan = ActPlan.new(act_plan_params)

    respond_to do |format|
      if @act_plan.save
        format.html { redirect_to @act_plan, notice: 'Act plan was successfully created.' }
        format.json { render :show, status: :created, location: @act_plan }
      else
        format.html { render :new }
        format.json { render json: @act_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /act_plans/1
  # PATCH/PUT /act_plans/1.json
  def update
    respond_to do |format|
      if @act_plan.update(act_plan_params)
        format.html { redirect_to @act_plan, notice: 'Act plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @act_plan }
      else
        format.html { render :edit }
        format.json { render json: @act_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /act_plans/1
  # DELETE /act_plans/1.json
  def destroy
    @act_plan.destroy
    respond_to do |format|
      format.html { redirect_to act_plans_url, notice: 'Act plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act_plan
      @act_plan = ActPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def act_plan_params
      params.require(:act_plan).permit(:code, :description, :target_id)
    end
end
