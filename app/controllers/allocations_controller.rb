class AllocationsController < ApplicationController
  before_action :authenticate
  before_action :setup_projects_for_select_box
  before_action :set_allocation, only: [:show, :edit, :update, :destroy]
  before_action :add_breadcrumb_for_index

  load_and_authorize_resource

  # GET /allocations
  # GET /allocations.json
  def index
    @allocations = Allocation.all.includes(:project).page(params[:page]).per(20)
  end

  # GET /allocations/1
  # GET /allocations/1.json
  def show
    add_breadcrumb_for_show
  end

  # GET /allocations/new
  def new
    add_breadcrumb_for_new
    @allocation = Allocation.new
  end

  # GET /allocations/1/edit
  def edit
    add_breadcrumb_for_edit
  end

  # POST /allocations
  # POST /allocations.json
  def create
    @allocation = Allocation.new(allocation_params)

    respond_to do |format|
      if @allocation.save
        format.html { redirect_to @allocation, notice: t(:allocation_created) }
        format.json { render :show, status: :created, location: @allocation }
      else
        format.html { render :new }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocations/1
  # PATCH/PUT /allocations/1.json
  def update

    respond_to do |format|
      if @allocation.update(allocation_params)
        format.html { redirect_to @allocation, notice: t(:allocation_updated) }
        format.json { render :show, status: :ok, location: @allocation }
      else
        format.html { render :edit }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocations/1
  # DELETE /allocations/1.json
  def destroy
    @allocation.destroy
    respond_to do |format|
      format.html { redirect_to allocations_url, notice: t(:allocation_deleted) }
      format.json { head :no_content }
    end
  end

  private

  def setup_projects_for_select_box
    @projects_for_select_box = Project.all.collect { |pr| [pr.full_title, pr.id] }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_allocation
    @allocation = Allocation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def allocation_params
    params.require(:allocation).permit(:protocol, :start_date, :amount_cents, :amount, :project_id)
  end
end
