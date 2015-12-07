class AddFilesToCpars < ActiveRecord::Migration
  def change
  	add_column :cpars, :filename, :string
		add_column :cpars, :content_type, :string
		add_column :cpars, :file_contents, :binary   
		add_column :cpars, :file_date, :string
		add_column :cpars, :file_text, :description		
  end
end
