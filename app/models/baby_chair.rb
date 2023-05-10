class baby_chair < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ベビーチェアなし' },
    { id: 3, name: '女性トイレのみベビーチェア' },
    { id: 4, name: '女性トイレと男性トイレにベビーチェア' }
  ]
  include ActiveHash::Associations
  has_many :toilets

  end