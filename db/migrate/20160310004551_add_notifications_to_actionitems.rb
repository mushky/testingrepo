class AddNotificationsToActionitems < ActiveRecord::Migration
  def change
  	add_column :actionitems :notification, :string
  end
end
