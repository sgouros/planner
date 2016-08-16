class CollectiveDecisionsController < ApplicationController
  before_action :set_collective_decision, only: [:show, :edit, :update, :destroy]

  # GET /collective_decisions
  # GET /collective_decisions.json
  def index
    @collective_decisions = CollectiveDecision.all
  end

  # GET /collective_decisions/1
  # GET /collective_decisions/1.json
  def show
  end

  # GET /collective_decisions/new
  def new
    @collective_decision = CollectiveDecision.new
  end

  # GET /collective_decisions/1/edit
  def edit
  end

  # POST /collective_decisions
  # POST /collective_decisions.json
  def create
    @collective_decision = CollectiveDecision.new(collective_decision_params)

    respond_to do |format|
      if @collective_decision.save
        format.html { redirect_to @collective_decision, notice: 'Collective decision was successfully created.' }
        format.json { render :show, status: :created, location: @collective_decision }
      else
        format.html { render :new }
        format.json { render json: @collective_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collective_decisions/1
  # PATCH/PUT /collective_decisions/1.json
  def update
    respond_to do |format|
      if @collective_decision.update(collective_decision_params)
        format.html { redirect_to @collective_decision, notice: 'Collective decision was successfully updated.' }
        format.json { render :show, status: :ok, location: @collective_decision }
      else
        format.html { render :edit }
        format.json { render json: @collective_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collective_decisions/1
  # DELETE /collective_decisions/1.json
  def destroy
    @collective_decision.destroy
    respond_to do |format|
      format.html { redirect_to collective_decisions_url, notice: 'Collective decision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collective_decision
      @collective_decision = CollectiveDecision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collective_decision_params
      params.require(:collective_decision).permit(:code, :description)
    end
end
