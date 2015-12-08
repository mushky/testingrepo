class AddOldIatIdToCpars < ActiveRecord::Migration
  def change
  	add_column :cpars, :old_id, :string
  end
end
