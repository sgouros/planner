class ContractUpdatesController < ApplicationController
  before_action :set_contract_update, only: [:show, :edit, :update, :destroy]

  # GET /contract_updates
  # GET /contract_updates.json
  def index
    @contract_updates = ContractUpdate.all
  end

  # GET /contract_updates/1
  # GET /contract_updates/1.json
  def show
  end

  # GET /contract_updates/new
  def new
    @contract_update = ContractUpdate.new
  end

  # GET /contract_updates/1/edit
  def edit
  end

  # POST /contract_updates
  # POST /contract_updates.json
  def create
    @contract_update = ContractUpdate.new(contract_update_params)

    respond_to do |format|
      if @contract_update.save
        format.html { redirect_to @contract_update, notice: 'Contract update was successfully created.' }
        format.json { render :show, status: :created, location: @contract_update }
      else
        format.html { render :new }
        format.json { render json: @contract_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_updates/1
  # PATCH/PUT /contract_updates/1.json
  def update
    respond_to do |format|
      if @contract_update.update(contract_update_params)
        format.html { redirect_to @contract_update, notice: 'Contract update was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_update }
      else
        format.html { render :edit }
        format.json { render json: @contract_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_updates/1
  # DELETE /contract_updates/1.json
  def destroy
    @contract_update.destroy
    respond_to do |format|
      format.html { redirect_to contract_updates_url, notice: 'Contract update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_update
      @contract_update = ContractUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_update_params
      params.require(:contract_update).permit(:update_version, :amount, :start_date, :comments, :contract_id)
    end
end
