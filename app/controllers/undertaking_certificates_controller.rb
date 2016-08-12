class UndertakingCertificatesController < ApplicationController
  before_action :set_undertaking_certificate, only: [:show, :edit, :update, :destroy]

  # GET /undertaking_certificates
  # GET /undertaking_certificates.json
  def index
    @undertaking_certificates = UndertakingCertificate.all
  end

  # GET /undertaking_certificates/1
  # GET /undertaking_certificates/1.json
  def show
  end

  # GET /undertaking_certificates/new
  def new
    @undertaking_certificate = UndertakingCertificate.new
  end

  # GET /undertaking_certificates/1/edit
  def edit
  end

  # POST /undertaking_certificates
  # POST /undertaking_certificates.json
  def create
    @undertaking_certificate = UndertakingCertificate.new(undertaking_certificate_params)

    respond_to do |format|
      if @undertaking_certificate.save
        format.html { redirect_to @undertaking_certificate, notice: 'Undertaking certificate was successfully created.' }
        format.json { render :show, status: :created, location: @undertaking_certificate }
      else
        format.html { render :new }
        format.json { render json: @undertaking_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /undertaking_certificates/1
  # PATCH/PUT /undertaking_certificates/1.json
  def update
    respond_to do |format|
      if @undertaking_certificate.update(undertaking_certificate_params)
        format.html { redirect_to @undertaking_certificate, notice: 'Undertaking certificate was successfully updated.' }
        format.json { render :show, status: :ok, location: @undertaking_certificate }
      else
        format.html { render :edit }
        format.json { render json: @undertaking_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /undertaking_certificates/1
  # DELETE /undertaking_certificates/1.json
  def destroy
    @undertaking_certificate.destroy
    respond_to do |format|
      format.html { redirect_to undertaking_certificates_url, notice: 'Undertaking certificate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_undertaking_certificate
      @undertaking_certificate = UndertakingCertificate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def undertaking_certificate_params
      params.require(:undertaking_certificate).permit(:protocol, :start_date, :title, :amount, :subproject_id)
    end
end
