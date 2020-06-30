class StateParksController < ApplicationController
  def index
    @state_parks = StatePark.all
  end

  def new
    @state_park = StatePark.new
  end

  def show
    @state_park = StatePark.find(params[:id])
  end

  def create
    state_park = StatePark.create(state_park_params)
    redirect_to state_park_path(state_park)
  end

private

  def state_park_params
    params.require(:state_park).permit(:name, :address, :county)
  end
end
