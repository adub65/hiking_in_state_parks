class HikesController < ApplicationController

  def new
    @hike = Hike.new
  end

private

  def hike_params
    params.require(:hike).permit(:duration, :date_hiked, :user_id, :trail_id)
  end
end
