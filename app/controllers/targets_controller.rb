class TargetsController < ApplicationController
  before_action :authenticate
  before_action :setup_measures_for_select_box
  before_action :set_target, only: [:show, :edit, :update, :destroy]
  before_action :add_breadcrumb_for_index

  load_and_authorize_resource

  # GET /targets
  # GET /targets.json
  def index
    @targets = Target.all.includes(:measure).page(params[:page]).per(20)
  end

  # GET /targets/1
  # GET /targets/1.json
  def show
    add_breadcrumb_for_show
  end

  # GET /targets/new
  def new
    add_breadcrumb_for_new
    @target = Target.new
  end

  # GET /targets/1/edit
  def edit
    add_breadcrumb_for_edit
  end

  # POST /targets
  # POST /targets.json
  def create
    @target = Target.new(target_params)

    respond_to do |format|
      if @target.save
        format.html { redirect_to @target, notice: t(:target_created) }
        format.json { render :show, status: :created, location: @target }
      else
        format.html { render :new }
        format.json { render json: @target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /targets/1
  # PATCH/PUT /targets/1.json
  def update

    respond_to do |format|
      if @target.update(target_params)
        format.html { redirect_to @target, notice: t(:target_updated) }
        format.json { render :show, status: :ok, location: @target }
      else
        format.html { render :edit }
        format.json { render json: @target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /targets/1
  # DELETE /targets/1.json
  def destroy
    @target.destroy
    respond_to do |format|
      format.html { redirect_to targets_url, notice: t(:target_deleted) }
      format.json { head :no_content }
    end
  end

  private

  def setup_measures_for_select_box
    @measures_for_select_box = Measure.all.collect { |mes| [mes.full_title, mes.id] }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_target
    @target = Target.find(params[:id])
  end

  # Never trust parameteract_plas from the scary internet, only allow the white list through.
  def target_params
    params.require(:target).permit(:code, :description, :measure_id)
  end
end
