class HikesController < ApplicationController
  before_action :trail, :state_park

  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.new(hike_params)
    binding.pry
    @hike.user = session[:user_id]
    redirect_to user_path(user)
  end

private

  def hike_params
    params.require(:hike).permit(:duration, :date_hiked, :user_id, :trail_id)
  end

  def trail
    @trail ||= Trail.find(params[:trail_id])
  end

  def state_park
    @state_park ||= StatePark.find(params[:state_park_id])
  end
end
