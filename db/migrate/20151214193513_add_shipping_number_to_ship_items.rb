class AddShippingNumberToShipItems < ActiveRecord::Migration
  def change
  	add_column :ship_items, :shipping_number, :string
  end
end
