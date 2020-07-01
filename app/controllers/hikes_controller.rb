class HikesController < ApplicationController
  before_action :trail, :state_park

  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.new(hike_params)
    @hike.trail_id = params[:trail_id]
    @hike.user_id = session[:user_id]
    if @hike.save
      redirect_to user_path(@hike.user)
    else
      flash[:error] = @hike.errors.full_messages.join(". ")
      render :new
    end
  end

private

  def hike_params
    params.require(:hike).permit(:duration, :date_hiked, :trail_id)
  end

  def trail
    @trail ||= Trail.find(params[:trail_id])
  end

  def state_park
    @state_park ||= StatePark.find(params[:state_park_id])
  end
end
