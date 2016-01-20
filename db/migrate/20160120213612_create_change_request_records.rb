class CreateChangeRequestRecords < ActiveRecord::Migration
  def change
    create_table :change_request_records do |t|
      t.string, :project_name
      t.string, :unique_identifier
      t.string, :item_title
      t.string, :approved_by
      t.string, :change_request_ref
      t.string, :date_received
      t.string, :requestor_name
      t.string, :requestor_role
      t.string, :related_issue_ref
      t.string, :contact_details
      t.string, :requestor_business_unit
      t.text, :change_description
      t.text, :change_justification
      t.text, :alternative_comments
      t.text :supporting_information

      t.timestamps null: false
    end
  end
end
