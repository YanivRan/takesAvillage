class AddIconToDialects < ActiveRecord::Migration[5.0]
  def change
  	add_column :dialects, :icon_path, :string, null: false
  end
end
