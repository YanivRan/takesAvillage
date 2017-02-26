class AddRooms < ActiveRecord::Migration[5.0]
  def change
  	create_table :rooms do |t|
      t.timestamps null: false
      t.string :name, null: false
    end
  end
end
