class ChangeIntToStringsInRequisitions < ActiveRecord::Migration
  def change
  	# change_column (table, property, value)
  	change_column :requisitions, :pr_date, :string 
  	change_column :requisitions, :phone, :string
  	change_column :requisitions, :req_date, :string
  	change_column :requisitions, :approval_date, :string
  end
end
