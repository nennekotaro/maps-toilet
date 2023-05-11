class Map < ApplicationRecord
  geocoded_by :addresses
  after_validation :geocode, if: :will_save_change_to_addresses?
  belongs_to :user
  has_one :toilet
end
