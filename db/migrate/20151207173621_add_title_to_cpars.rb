class AddTitleToCpars < ActiveRecord::Migration
  def change
    add_column :cpars, :title, :string
  end
end
