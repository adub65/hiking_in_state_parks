class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
    authenticated = user.authenticate(params[:password])
    if authenticated
      session[:user_id] = user.id

      redirect_to user_path(user)
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
