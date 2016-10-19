class SessionsController < ApplicationController

  def create
    logger.info "Processing the login request..."
		if user = User.authenticate(params[:email], params[:password])
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

end
