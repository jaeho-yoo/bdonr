class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.text :room_number
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
