class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.text :building_name
      t.string :building_type
      t.string :building_room
      t.string :building_location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
