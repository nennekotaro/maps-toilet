class Warm < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '暖房便座がない' },
    { id: 3, name: '暖房便座がある' }
  ]
  include ActiveHash::Associations
  has_many :toilets

  end