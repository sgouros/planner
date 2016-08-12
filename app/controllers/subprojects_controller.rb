class SubprojectsController < ApplicationController
  before_action :set_subproject, only: [:show, :edit, :update, :destroy]

  # GET /subprojects
  # GET /subprojects.json
  def index
    @subprojects = Subproject.all
  end

  # GET /subprojects/1
  # GET /subprojects/1.json
  def show
  end

  # GET /subprojects/new
  def new
    @subproject = Subproject.new
  end

  # GET /subprojects/1/edit
  def edit
  end

  # POST /subprojects
  # POST /subprojects.json
  def create
    @subproject = Subproject.new(subproject_params)

    respond_to do |format|
      if @subproject.save
        format.html { redirect_to @subproject, notice: 'Subproject was successfully created.' }
        format.json { render :show, status: :created, location: @subproject }
      else
        format.html { render :new }
        format.json { render json: @subproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subprojects/1
  # PATCH/PUT /subprojects/1.json
  def update
    respond_to do |format|
      if @subproject.update(subproject_params)
        format.html { redirect_to @subproject, notice: 'Subproject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subproject }
      else
        format.html { render :edit }
        format.json { render json: @subproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subprojects/1
  # DELETE /subprojects/1.json
  def destroy
    @subproject.destroy
    respond_to do |format|
      format.html { redirect_to subprojects_url, notice: 'Subproject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subproject
      @subproject = Subproject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subproject_params
      params.require(:subproject).permit(:code, :title, :budget, :description, :progress_code, :prefecture_code, :incorporation_date, :incorporation_protocol, :amendments, :phase_code, :implementation_code, :priority_code, :comments, :proposed_badget, :supervisor_body_id, :project_id, :accountable_id, :implementation_body_id)
    end
end
