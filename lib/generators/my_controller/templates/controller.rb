class <%=controller_class%> < ApplicationController
  before_action :authenticate
  # before_action :setup_targets_for_select_box
  before_action :set_<%=model_name%>, only: [:show, :edit, :update, :destroy]
  before_action :add_breadcrumb_for_index

  load_and_authorize_resource

  # GET /<%=model_name_plural%>
  # GET /<%=model_name_plural%>.json
  def index
    @<%=model_name_plural%> = <%=model_class%>.all.includes(:target)
  end

  # GET /<%=model_name_plural%>/1
  # GET /<%=model_name_plural%>/1.json
  def show
    add_breadcrumb_for(:show)
  end

  # GET /<%=model_name_plural%>/new
  def new
    add_breadcrumb_for(:new)

    @<%=model_name%> = <%=model_class%>.new
  end

  # GET /<%=model_name_plural%>/1/edit
  def edit
    add_breadcrumb_for(:edit)
  end

  # POST /<%=model_name_plural%>
  # POST /<%=model_name_plural%>.json
  def create
    @<%=model_name%> = <%=model_class%>.new(<%=model_name%>_params)

    respond_to do |format|
      if @<%=model_name%>.save
        format.html { redirect_to @<%=model_name%>, notice: t(:<%=model_name%>_created) }
        format.json { render :show, status: :created, location: @<%=model_name%> }
      else
        format.html { render :new }
        format.json { render json: @<%=model_name%>.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /<%=model_name_plural%>/1
  # PATCH/PUT /<%=model_name_plural%>/1.json
  def update

    respond_to do |format|
      if @<%=model_name%>.update(<%=model_name%>_params)
        format.html { redirect_to @<%=model_name%>, notice: t(:<%=model_name%>_updated) }
        format.json { render :show, status: :ok, location: @<%=model_name%> }
      else
        format.html { render :edit }
        format.json { render json: @<%=model_name%>.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /<%=model_name_plural%>/1
  # DELETE /<%=model_name_plural%>/1.json
  def destroy
    @<%=model_name%>.destroy
    respond_to do |format|
      format.html { redirect_to <%=model_name_plural%>_url, notice: t(:<%=model_name%>_deleted) }
      format.json { head :no_content }
    end
  end

  private

#  def setup_targets_for_select_box
#    @targets_for_select_box = Target.all.collect { |targ| [targ.full_title, targ.id] }
#  end

  # Use callbacks to share common setup or constraints between actions.
  def set_<%=model_name%>
    @<%=model_name%> = <%=model_class%>.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def <%=model_name%>_params
#    params.require(:<%=model_name%>).permit(:code, :description, :target_id)
  end
end
