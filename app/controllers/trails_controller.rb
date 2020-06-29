class TrailsController < ApplicationController

  def new
    @trail = Trail.new
  end

private

  def trail_params
    params.require(:trail).permit(:name, :distance, :difficulty, :trail_composition)
  end
end
