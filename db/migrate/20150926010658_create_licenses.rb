class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :name
      t.text :description
      t.string :user
      t.integer :expiration
      t.string :key

      t.timestamps null: false
    end
  end
end
