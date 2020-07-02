class SessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.nil?
      flash[:error] = "Could not find that email."

      redirect_to root_path
    else
      @user.authenticate(params[:password])
      session[:user_id] = @user.id

      redirect_to user_path(@user)
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have successfully logged out."
    redirect_to root_path
  end
end
