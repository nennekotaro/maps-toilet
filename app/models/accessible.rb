class Accessible < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '多機能トイレなし' },
    { id: 3, name: '手すりがある最低限の多機能トイレ' },
    { id: 4, name: 'オストメイトがある多機能トイレ' },
    { id: 5, name: 'ベビーチェア、おむつ替えシートがある多機能トイレ' },
    { id: 6, name: '介助用ベッドがある多機能トイレ' },
    { id: 7, name: '手すり、オストメイト、乳児向け設備、介助用ベッドがある多機能トイレ' }
  ]

  include ActiveHash::Associations
  has_many :toilets

  end