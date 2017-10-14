class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
#
#   helper_method :current_user
#
  helper_method :current_user
#
private
#
  def current_user
    @user ||= User.find_by(api_token: params[:api_token])
  end

#
  def logged_in?
    current_user
  end

  def logged_out?
    !current_user
  end

  def require_login
    if logged_out?
      render json: ["Please log in"], status: :forbidden
    end
  end




end
