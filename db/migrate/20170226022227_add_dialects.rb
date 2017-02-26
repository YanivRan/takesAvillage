class AddDialects < ActiveRecord::Migration[5.0]
  def change
  	create_table :dialects do |t|
      t.timestamps null: false
      t.string :display_name, null: false
      t.string :name, null: false
      t.string :path, null: false
    end
  end
end
