class ApplicationController < ActionController::Base
  helper :all
  check_authorization
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    logger.info("ACCESS DENIED for #{current_user.role} #{current_user.email} on #{exception.action} for #{exception.subject.inspect}")
    redirect_to access_denied_url(:failed_user => current_user, :failed_action => exception.action, :failed_model => exception.subject.inspect )
  end

  add_breadcrumb I18n.t('breadcrumbs.home'), :root_path

  protected
  	helper_method :user_signed_in?
    helper_method :current_user
    helper_method :admin?
    helper_method :add_breadcrumb_for_index
    helper_method :add_breadcrumb_for

  def add_breadcrumb_for_index
    model_name = controller_name.classify.underscore # e.g. ActPlansController => act_plan
    breadcrumb_text = 'breadcrumbs.' + model_name + '.index'  #eg breadcrumbs.act_plan.index
    breadcrumb_path = (model_name.pluralize + '_path').to_sym #eg act_plans_path

    add_breadcrumb I18n.t(breadcrumb_text), breadcrumb_path
  end

  def add_breadcrumb_for(action)
    model_name = controller_name.classify.underscore # e.g. ActPlansController => act_plan
    breadcrumb_text = 'breadcrumbs.' + action.to_s
    breadcrumb_path = (action.to_s + '_' + model_name +'_path').to_sym # e.g. edit_act_plan_path

    add_breadcrumb I18n.t(breadcrumb_text), breadcrumb_path
  end

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
