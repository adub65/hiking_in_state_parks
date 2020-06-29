class HikesController < ApplicationController

private

  def hike_params
    params.require(:hike).permit(:duration, :date_hiked, :user_id, :trail_id)
  end
end
