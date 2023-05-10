class MapsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @maps = Map.includes(:user)
    gon.maps = Map.all
  end

  def new
    @map = Map.new
    @toilet = @map.build_toilet
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
    params.require(:map).permit(:addresses, :latitude, :longitude).merge(user_id: current_user.id)
  end
end
