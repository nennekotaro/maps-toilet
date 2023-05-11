class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '男女共用トイレ' },
    { id: 3, name: '男女別トイレ' }
  ]
  include ActiveHash::Associations
  has_many :toilets
end
