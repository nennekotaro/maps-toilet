class Map < ApplicationRecord
  geocoded_by :addresses
  after_validation :geocode
  belongs_to :user
  has_one :toilet
end
