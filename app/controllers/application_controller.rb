class ApplicationController < ActionController::Base
  check_authorization
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to access_denied_url(:message => exception.message)
  end

  protected
  	helper_method :user_signed_in?
    helper_method :current_user
    helper_method :admin?

  def authenticate
	  user_signed_in? ? true : redirect_to_root
	end

  def user_signed_in?
    current_user.is_a? User
  end

  def current_user
    return unless session[:user_id]
    @current_user || User.find_by_id(session[:user_id])
  end

  def admin?
    if user_signed_in?
      return current_user.admin?
    else
      return false
    end
  end

  def redirect_to_root
    redirect_to login_path, :notice => t(:please_log_in_to_continue) and return false
  end

  def page_not_found
    raise ActionController::RoutingError.new(t :page_not_found)
  end

  def set_admin_locale
    I18n.locale = :en
  end

end
