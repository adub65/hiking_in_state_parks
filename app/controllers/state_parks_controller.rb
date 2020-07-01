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
    @state_park = StatePark.new(state_park_params)
    if @state_park.save
      redirect_to state_park_path(@state_park)
    else
      flash[:error] = @state_park.errors.full_messages.join(". ")
      render :new
    end
  end

private

  def state_park_params
    params.require(:state_park).permit(:name, :address, :county)
  end
end
