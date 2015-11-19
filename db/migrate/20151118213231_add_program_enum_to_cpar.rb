class AddProgramEnumToCpar < ActiveRecord::Migration
  def change
  	add_column :cpars, :program_enum, :string
  end
end
