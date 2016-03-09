class AddFieldsToInventories < ActiveRecord::Migration
  def change
  	add_column :inventories, :employee, :string
  	add_column :inventories, :laptop_model, :string
  	add_column :inventories, :windows, :string
  	add_column :inventories, :office_suite, :string
  	add_column :inventories, :adobe_pro, :string
  	add_column :inventories, :adobe_stn, :string
  	add_column :inventories, :visual_studio, :string
  	add_column :inventories, :visio, :string
  	add_column :inventories, :status, :string
  	add_column :inventories, :other, :string
  	add_column :inventories, :iat_num, :string
  	add_column :inventories, :microsoft_project, :string
  	add_column :inventories, :nxpowerlite, :string
  	add_column :inventories, :win_pro, :string

  end
end
