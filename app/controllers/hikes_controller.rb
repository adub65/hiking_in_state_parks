class HikesController < ApplicationController

  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.create(hike_params)
    redirect_to hike_path(@hike)
  end

private

  def hike_params
    params.require(:hike).permit(:duration, :date_hiked, :user_id, :trail_id)
  end
end
