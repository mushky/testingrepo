class AddIatNumToActionitems < ActiveRecord::Migration
  def change
  	add_column :actionitems, :iat_num, :string
  end
end
