class UsersController < ApplicationController
  before_action :authenticate
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :setup_organisations_for_select_box
  load_and_authorize_resource
  add_breadcrumb 'users', :users_path
  # GET /users
  # GET /users.json
  def index

    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: t(:user_created) }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: t(:user_updated) }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: t(:user_deletes) }
      format.json { head :no_content }
    end
  end

  private

    def setup_organisations_for_select_box
      @organisations_for_select_box = Organisation.all.collect{|org| [org.full_title, org.id]}
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:password, :password_confirmation, :surname, :phone, :email, :role, :organisation_id, :normalized_name, :normalized_surname)
    end


end
