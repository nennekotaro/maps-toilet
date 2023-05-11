class Paper < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'トイレットペーパーがない' },
    { id: 3, name: 'トイレットペーパーが時々ない' },
    { id: 4, name: 'トイレットペーパーがほとんどある' },
    { id: 5, name: 'トイレットペーパーが必ずある' }
  ]
  include ActiveHash::Associations
  has_many :toilets
end
