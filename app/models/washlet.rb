class warm < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '温水洗浄便座がない' },
    { id: 3, name: '温水洗浄便座がある' }
  ]
  include ActiveHash::Associations
  has_many :toilets

  end