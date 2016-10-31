class SessionsController < ApplicationController
skip_authorization_check

  def create
		if user = User.authenticate(params[:session][:email], params[:session][:password])
      logger.info "authentication successfull"
			session[:user_id] = user.id
			redirect_to root_path, :notice => t(:welcome)
		else
      logger.info "authentication NOT successfull"
      flash.now[:alert] = t(:invalid_login_password_combination)
  		render :action => 'new'
		end
	end

	def destroy
		reset_session
		redirect_to login_path, :notice => t(:logged_out)
	end

  def show
    redirect_to root_path
  end

end
