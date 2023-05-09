class Map < ApplicationRecord
  geocoded_by :sum_address
  after_validation :geocode, if: :will_save_change_to_sum_address?

  def sum_address
    [postal_code, prefecture, city, addresses, building].compact.join(', ')
  end

  validates :postal_code, presence: true, format: { with: /\A\d{3}-\d{4}\z/, message: 'is invalid. Enter it as follows (e.g. 123-4567)' }
  validates :city,        presence: true
  validates :addresses,   presence: true
  validates :prefecture,  presence: true

  belongs_to :user
end