class CreateToilets < ActiveRecord::Migration[6.0]
  def change
    create_table :toilets do |t|
      t.string     :title,          null: false
      t.text       :info,           null: false
      t.integer    :accessible_id
      t.integer    :baby_chair_id
      t.integer    :change_table_id
      t.integer    :gender_id
      t.integer    :paper_id
      t.integer    :powder_room_id
      t.integer    :slippers_id
      t.integer    :toilet_style_id
      t.integer    :toilet_wipes_id
      t.integer    :warm_id
      t.integer    :washlet_id
      t.references :map,            null: false, foreign_key: true
      t.timestamps
    end
  end
end
