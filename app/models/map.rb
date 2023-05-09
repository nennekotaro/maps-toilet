class Map < ApplicationRecord
  geocoded_by :addresses
  after_validation :geocode, if: :will_save_change_to_addresses?
  validates :addresses,   presence: true
  belongs_to :user
end