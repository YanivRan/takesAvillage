class AddRoomToMessages < ActiveRecord::Migration[5.0]
  def change
  	 add_column :messages, :room_id, :integer, default: 0, null: false
  end
end
