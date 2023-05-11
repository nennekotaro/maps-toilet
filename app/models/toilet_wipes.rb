class ToiletWipes < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '便座除菌クリーナーがない' },
    { id: 3, name: '便座除菌クリーナーがある' }
  ]
  include ActiveHash::Associations
  has_many :toilets
end
