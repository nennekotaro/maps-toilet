class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string     :addresses,     null: false
      t.references :user,          null: false, foreign_key: true
      t.float      :latitude
      t.float      :longitude
      t.timestamps
    end
  end
end
