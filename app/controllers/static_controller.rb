class StaticController < ApplicationController
  skip_authorization_check

  def access_denied
    @failed_user = User.find(params[:failed_user])
    @failed_model = params[:failed_model]
    @failed_action = params[:failed_action]
  end

end
