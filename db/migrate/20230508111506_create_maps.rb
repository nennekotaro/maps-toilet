class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string     :postal_code,   null: false
      t.string     :city,          null: false
      t.string     :addresses,     null: false
      t.string     :building
      t.string     :prefecture,    null: false
      t.references :user,          null: false, foreign_key: true
      t.float      :latitude
      t.float      :longitude
      t.string     :sum_address
      t.timestamps
    end
  end
end
