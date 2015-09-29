class CreateRequisitions < ActiveRecord::Migration
  def change
    create_table :requisitions do |t|
      t.string :requestor 
      t.string :pr_number 
      t.integer :pr_date  
      t.string :company   
      t.string :address
      t.integer :phone
      t.string :contact
      t.text :comments
      t.boolean :for_export
      t.string :to_where
      t.text :description_of_use
      t.integer :quantity
      t.string :uom
      t.string :part_number
      t.text :description
      t.float :unit_cost
      t.float :total
      t.integer :req_date
      t.string :acct_number
      t.string :usage
      t.string :approval
      t.integer :approval_date

      t.timestamps null: false
    end
  end
end
