class AddDialectToMessages < ActiveRecord::Migration[5.0]
  def change
  	 add_column :messages, :dialect_id, :integer, default: 0, null: false
  end
end
