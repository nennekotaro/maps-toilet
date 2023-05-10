class toilet_style < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '和式トイレ' },
    { id: 3, name: '洋式トイレ' },
    { id: 4, name: '和式トイレと洋式トイレ' }
  ]
  include ActiveHash::Associations
  has_many :toilets

  end