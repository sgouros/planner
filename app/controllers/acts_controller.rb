class ActsController < ApplicationController
  before_action :authenticate
  before_action :setup_act_plans_for_select_box
  before_action :set_act, only: [:show, :edit, :update, :destroy]
  before_action :add_breadcrumb_for_index

  load_and_authorize_resource

  # GET /acts
  # GET /acts.json
  def index
    @acts = Act.all.includes(:act_plan).page(params[:page]).per(20)
  end

  # GET /acts/1
  # GET /acts/1.json
  def show
    add_breadcrumb_for_show
  end

  # GET /acts/new
  def new
    add_breadcrumb_for_new
    @act = Act.new
  end

  # GET /acts/1/edit
  def edit
    add_breadcrumb_for_edit
  end

  # POST /acts
  # POST /acts.json
  def create
    @act = Act.new(act_params)

    respond_to do |format|
      if @act.save
        format.html { redirect_to @act, notice: t(:act_created) }
        format.json { render :show, status: :created, location: @act }
      else
        format.html { render :new }
        format.json { render json: @act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acts/1
  # PATCH/PUT /acts/1.json
  def update

    respond_to do |format|
      if @act.update(act_params)
        format.html { redirect_to @act, notice: t(:act_updated) }
        format.json { render :show, status: :ok, location: @act }
      else
        format.html { render :edit }
        format.json { render json: @act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acts/1
  # DELETE /acts/1.json
  def destroy
    @act.destroy
    respond_to do |format|
      format.html { redirect_to acts_url, notice: t(:act_deleted) }
      format.json { head :no_content }
    end
  end

  private

  def setup_act_plans_for_select_box
    @act_plans_for_select_box = ActPlan.all.collect { |ap| [ap.full_title, ap.id] }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_act
    @act = Act.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def act_params
    params.require(:act).permit(:code, :description, :act_plan_id)
  end
end
