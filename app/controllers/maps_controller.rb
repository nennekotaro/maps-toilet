class MapsController < ApplicationController
  def index

  end

  def new
    @map = Map.new
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def map_params
    params.require(:map).permit(:postal_code, :city, :addresses, :building, :prefecture, :latitude, :longitude, :sum_address).merge(user_id: current_user.id)
  end
end
