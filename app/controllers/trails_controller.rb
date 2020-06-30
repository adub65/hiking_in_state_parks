class TrailsController < ApplicationController
  before_action :state_park

  def new
    @trail = Trail.new
  end

  def create
    trail = Trail.new(trail_params)
    trail.state_park = state_park
    trail.save
    redirect_to state_park_trail_path(state_park, trail)
  end

  def show
    @trail = Trail.find(params[:id])
  end
  
private

  def trail_params
    params.require(:trail).permit(:name, :distance, :difficulty, :trail_composition)
  end

  def state_park
    @state_park ||= StatePark.find(params[:state_park_id])
  end
end
