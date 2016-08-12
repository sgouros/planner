class AccountablesController < ApplicationController
  before_action :set_accountable, only: [:show, :edit, :update, :destroy]

  # GET /accountables
  # GET /accountables.json
  def index
    @accountables = Accountable.all
  end

  # GET /accountables/1
  # GET /accountables/1.json
  def show
  end

  # GET /accountables/new
  def new
    @accountable = Accountable.new
  end

  # GET /accountables/1/edit
  def edit
  end

  # POST /accountables
  # POST /accountables.json
  def create
    @accountable = Accountable.new(accountable_params)

    respond_to do |format|
      if @accountable.save
        format.html { redirect_to @accountable, notice: 'Accountable was successfully created.' }
        format.json { render :show, status: :created, location: @accountable }
      else
        format.html { render :new }
        format.json { render json: @accountable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accountables/1
  # PATCH/PUT /accountables/1.json
  def update
    respond_to do |format|
      if @accountable.update(accountable_params)
        format.html { redirect_to @accountable, notice: 'Accountable was successfully updated.' }
        format.json { render :show, status: :ok, location: @accountable }
      else
        format.html { render :edit }
        format.json { render json: @accountable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accountables/1
  # DELETE /accountables/1.json
  def destroy
    @accountable.destroy
    respond_to do |format|
      format.html { redirect_to accountables_url, notice: 'Accountable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accountable
      @accountable = Accountable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accountable_params
      params.require(:accountable).permit(:surname, :name, :phone, :fax, :email, :organisation_id)
    end
end
