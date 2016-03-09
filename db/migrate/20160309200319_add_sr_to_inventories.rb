class AddSrToInventories < ActiveRecord::Migration
  def change
  	add_column :inventories, :laptop_serial_number, :string
  end
end
