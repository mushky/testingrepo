class AddFormCountersToCpar < ActiveRecord::Migration
  def change
  	add_column :cpars, :car_counter, :integer
  	add_column :cpars, :par_counter, :integer
  	add_column :cpars, :ci_counter, :integer
  	add_column :cpars, :ncmr_counter, :integer
  	add_column :cpars, :scar_counter, :integer
  end
end
