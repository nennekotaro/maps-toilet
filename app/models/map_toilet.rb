class MapToilet
  include ActiveModel::Model
  attr_accessor :addresses, :user_id, :latitude, :longitude, :title, :info, :accessible_id, :baby_chair_id, :change_table_id, :gender_id, :paper_id, :powder_room_id, :slippers_id, :toilet_style_id, :toilet_wipes_id, :warm_id, :washlet_id, :map_id

  with_options presence: true do
    validates :addresses
    validates :user_id
    validates :title
    validates :info
  end

  def save
    map = Map.create(addresses: addresses, user_id: user_id, latitude: latitude, longitude: longitude)
    Toilet.create(title: title, info: info, accessible_id: accessible_id, baby_chair_id: baby_chair_id, change_table_id: change_table_id, gender_id: gender_id, paper_id: paper_id, powder_room_id: powder_room_id, slippers_id: slippers_id, toilet_style_id: toilet_style_id, toilet_wipes_id: toilet_wipes_id, warm_id: warm_id, washlet_id: washlet_id, map_id: map.id)
  end
end