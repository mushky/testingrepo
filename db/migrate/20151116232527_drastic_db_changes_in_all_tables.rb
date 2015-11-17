class DrasticDbChangesInAllTables < ActiveRecord::Migration
  def change
  	# Requisitions Table Changes
  	change_column :requisitions, :for_export, :string 

  	# CPARS Table Changes
  	change_column :cpars, :affects_delivered_product, :string
		change_column :cpars, :proposed_immediate_action_date, :string
  	change_column :cpars, :underlying_root_cause_date, :string
  	change_column :cpars, :proposed_action_for_longterm_solution_date, :string
  	change_column :cpars, :evaluation_of_effectiveness_of_action_date, :string
  	change_column :cpars, :form_completed_by_date, :string

  	# Licenses Table Changes
  	change_column :licenses, :expiration, :string

  end
end
