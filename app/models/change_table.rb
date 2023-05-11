class ChangeTable < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'おむつ交換台なし' },
    { id: 3, name: '女性トイレのみ、おむつ交換台' },
    { id: 4, name: '女性トイレと男性トイレにおむつ交換台' }
  ]
  include ActiveHash::Associations
  has_many :toilets

  end