class CreateInspectItems < ActiveRecord::Migration
  def change
    create_table :inspect_items do |t|
      t.string :part
      t.string :serial
      t.text :description
      t.string :date
      t.integer :quantity
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
