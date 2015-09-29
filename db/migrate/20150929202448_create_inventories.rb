class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :part
      t.string :serial
      t.string :date
      t.text :description
      t.integer :quantity
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
