class HikesController < ApplicationController

  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.new(hike_params)
    @hike.user = session[:user_id]
    redirect_to user_path(user)
  end

private

  def hike_params
    params.require(:hike).permit(:duration, :date_hiked, :user_id, :trail_id)
  end
end
