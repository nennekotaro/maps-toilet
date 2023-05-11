class Toilet < ApplicationRecord
  belongs_to :map
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :accessible
  belongs_to :baby_chair
  belongs_to :change_table
  belongs_to :gender
  belongs_to :paper
  belongs_to :powder_room
  belongs_to :slippers
  belongs_to :toilet_style
  belongs_to :toilet_wipes
  belongs_to :warm
  belongs_to :washlet

end
