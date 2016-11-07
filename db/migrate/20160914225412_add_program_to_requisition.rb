class AddProgramToRequisition < ActiveRecord::Migration
  def change
  	add_column :requisitions, :program, :string
  end
end
