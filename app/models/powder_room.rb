class powder_room < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'パウダールームがない' },
    { id: 3, name: 'パウダールームがある' }
  ]
  include ActiveHash::Associations
  has_many :toilets

  end