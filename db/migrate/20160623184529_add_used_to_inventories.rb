class AddUsedToInventories < ActiveRecord::Migration
  def change
  	add_column :inventories, :in_use, :string
  end
end
