class StaticController < ApplicationController
  skip_authorization_check

  def access_denied
    @message = params[:message]
  end

end
