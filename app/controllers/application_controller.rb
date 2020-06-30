class ApplicationController < ActionController::Base
  before_action :require_login

private

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in first."
      redirect_to root_path
    end
  end

  def logged_in?
    session[:user_id].present?
  end
end
