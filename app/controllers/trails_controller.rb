class TrailsController < ApplicationController

  def new
    @trail = Trail.new
    @state_park = StatePark.find(params[:state_park_id])
  end

  def create
    @trail = Trail.create(trail_params)
    redirect_to state_park_trail(@trail)
  end


private

  def trail_params
    params.require(:trail).permit(:name, :distance, :difficulty, :trail_composition)
  end
end
