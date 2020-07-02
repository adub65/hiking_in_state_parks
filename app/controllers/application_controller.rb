class ApplicationController < ActionController::Base
  before_action :require_login

private

  def logged_in?
    session[:user_id].present?
  end

  def require_login
    return if logged_in?

    flash[:error] = "You must be logged in first."
    redirect_to root_path
  end
end
