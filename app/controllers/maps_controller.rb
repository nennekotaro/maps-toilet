class MapsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @maps = Map.includes(:user)
    gon.maps = Map.all
  end

  def new
    @map_toilet = MapToilet.new
  end

  def create
    @map_toilet = MapToilet.new(map_toilet_params)
    if @map_toilet.valid?
      @map_toilet.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def map_toilet_params
    params.require(:map_toilet).permit(:addresses, :latitude, :longitude, :title, :info, :accessible_id, :baby_chair_id, :change_table_id, :gender_id, :paper_id, :powder_room_id, :slippers_id, :toilet_style_id, :toilet_wipes_id, :warm_id, :washlet_id
    ).merge(user_id: current_user.id)
  end
end
