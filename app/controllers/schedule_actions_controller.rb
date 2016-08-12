class ScheduleActionsController < ApplicationController
  before_action :set_schedule_action, only: [:show, :edit, :update, :destroy]

  # GET /schedule_actions
  # GET /schedule_actions.json
  def index
    @schedule_actions = ScheduleAction.all
  end

  # GET /schedule_actions/1
  # GET /schedule_actions/1.json
  def show
  end

  # GET /schedule_actions/new
  def new
    @schedule_action = ScheduleAction.new
  end

  # GET /schedule_actions/1/edit
  def edit
  end

  # POST /schedule_actions
  # POST /schedule_actions.json
  def create
    @schedule_action = ScheduleAction.new(schedule_action_params)

    respond_to do |format|
      if @schedule_action.save
        format.html { redirect_to @schedule_action, notice: 'Schedule action was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_action }
      else
        format.html { render :new }
        format.json { render json: @schedule_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_actions/1
  # PATCH/PUT /schedule_actions/1.json
  def update
    respond_to do |format|
      if @schedule_action.update(schedule_action_params)
        format.html { redirect_to @schedule_action, notice: 'Schedule action was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_action }
      else
        format.html { render :edit }
        format.json { render json: @schedule_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_actions/1
  # DELETE /schedule_actions/1.json
  def destroy
    @schedule_action.destroy
    respond_to do |format|
      format.html { redirect_to schedule_actions_url, notice: 'Schedule action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_action
      @schedule_action = ScheduleAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_action_params
      params.require(:schedule_action).permit(:description, :start_date, :end_date, :schedule_id)
    end
end
