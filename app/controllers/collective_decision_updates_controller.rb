class CollectiveDecisionUpdatesController < ApplicationController
  before_action :set_collective_decision_update, only: [:show, :edit, :update, :destroy]

  # GET /collective_decision_updates
  # GET /collective_decision_updates.json
  def index
    @collective_decision_updates = CollectiveDecisionUpdate.all
  end

  # GET /collective_decision_updates/1
  # GET /collective_decision_updates/1.json
  def show
  end

  # GET /collective_decision_updates/new
  def new
    @collective_decision_update = CollectiveDecisionUpdate.new
  end

  # GET /collective_decision_updates/1/edit
  def edit
  end

  # POST /collective_decision_updates
  # POST /collective_decision_updates.json
  def create
    @collective_decision_update = CollectiveDecisionUpdate.new(collective_decision_update_params)

    respond_to do |format|
      if @collective_decision_update.save
        format.html { redirect_to @collective_decision_update, notice: 'Collective decision update was successfully created.' }
        format.json { render :show, status: :created, location: @collective_decision_update }
      else
        format.html { render :new }
        format.json { render json: @collective_decision_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collective_decision_updates/1
  # PATCH/PUT /collective_decision_updates/1.json
  def update
    respond_to do |format|
      if @collective_decision_update.update(collective_decision_update_params)
        format.html { redirect_to @collective_decision_update, notice: 'Collective decision update was successfully updated.' }
        format.json { render :show, status: :ok, location: @collective_decision_update }
      else
        format.html { render :edit }
        format.json { render json: @collective_decision_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collective_decision_updates/1
  # DELETE /collective_decision_updates/1.json
  def destroy
    @collective_decision_update.destroy
    respond_to do |format|
      format.html { redirect_to collective_decision_updates_url, notice: 'Collective decision update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collective_decision_update
      @collective_decision_update = CollectiveDecisionUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collective_decision_update_params
      params.require(:collective_decision_update).permit(:protocol, :start_date, :description, :comments, :collective_decision_id)
    end
end
