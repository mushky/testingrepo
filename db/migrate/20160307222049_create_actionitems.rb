class CreateActionitems < ActiveRecord::Migration
  def change
    create_table :actionitems do |t|
    	
    	# Basic Fields
      t.string :subject
      t.string :event_discussed
      t.string :assigned_to
      t.string :project
      t.string :status
      t.string :priority
      t.string :area
      t.text   :comment

      # Project Management Fields
      t.string :request_due_date
      t.integer :hours_to_completion
      t.string :completion_date
      t.integer :percent_complete

      # Document Uploader
      t.string :filename
      t.string :content_type
      t.binary :file_contents

      t.timestamps null: false
    end
  end
end
