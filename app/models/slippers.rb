class slippers < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'スリッパがないトイレ' },
    { id: 3, name: 'スリッパがあるトイレ' }
  ]
  include ActiveHash::Associations
  has_many :toilets

  end