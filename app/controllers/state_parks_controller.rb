class StateParksController < ApplicationController

private

  def state_park_params
    params.require(:state_park).permit(:name, :address, :county)
  end
end
