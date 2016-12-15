class <%=controllerName%> < ApplicationController
  before_action :authenticate
  before_action :setup_parents_for_select_box
  before_action :set_<%=model_name%>, only: [:show, :edit, :update, :destroy]
  before_action :add_breadcrumb_for_index

  load_and_authorize_resource

  # GET /<%=model_names%>
  # GET /<%=model_names%>.json
  def index
    @<%=model_names%> = <%=modelName%>.all.includes(:parent).page(params[:page]).per(20)
  end

  # GET /<%=model_names%>/1
  # GET /<%=model_names%>/1.json
  def show
    add_breadcrumb_for_show
  end

  # GET /<%=model_names%>/new
  def new
    add_breadcrumb_for_new
    @<%=model_name%> = <%=modelName%>.new
  end

  # GET /<%=model_names%>/1/edit
  def edit
    add_breadcrumb_for_edit
  end

  # POST /<%=model_names%>
  # POST /<%=model_names%>.json
  def create
    @<%=model_name%> = <%=modelName%>.new(<%=model_name%>_params)

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

  # PATCH/PUT /<%=model_names%>/1
  # PATCH/PUT /<%=model_names%>/1.json
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

  # DELETE /<%=model_names%>/1
  # DELETE /<%=model_names%>/1.json
  def destroy
    @<%=model_name%>.destroy
    respond_to do |format|
      format.html { redirect_to <%=model_names%>_url, notice: t(:<%=model_name%>_deleted) }
      format.json { head :no_content }
    end
  end

  private

  def setup_parents_for_select_box
    @parents_for_select_box = Parent.all.collect { |par| [par.full_title, par.id] }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_<%=model_name%>
    @<%=model_name%> = <%=modelName%>.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def <%=model_name%>_params
    params.require(:<%=model_name%>).permit(:var1, :var2, :var3
  end
end
