class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.integer :cpar_number
			t.string :form
			t.string :iat_number
			t.string :program
			t.string :cpar_source
			t.string :category_phase
			t.string :impact
			t.string :specific_source
			t.string :other_category
			t.string :raised_by
			t.string :assigned_to
			t.string :date
			t.text :raised_by_remarks
			
			t.string :solution_required_by_date
			t.text :solution_required_remarks
			t.string :form_completed_by
			t.integer :form_completed_by_date
			t.text :form_completed_by_remarks

			t.text :finding
			t.text :finding_impact

			t.text :proposed_immediate_action
			t.string :proposed_immediate_action_completed_by
			t.integer :proposed_immediate_action_date
			t.text :proposed_immediate_action_remarks

			t.boolean :root_cause_analysis_required
			t.text :underlying_root_cause
			t.string :determined_by
			t.integer :underlying_root_cause_date
			t.text :underlying_root_cause_remarks

			t.text :proposed_action_for_longterm_solution
			t.string :proposed_action_for_longterm_solution_completed_by
			t.integer :proposed_action_for_longterm_solution_date
			t.text :proposed_action_for_longterm_solution_remarks

			t.text :evaluation_of_effectiveness_of_action
			t.text :objective_evidence
			t.string :closed_out_by
			t.integer :evaluation_of_effectiveness_of_action_date
			t.text :evaluation_of_effectiveness_of_action_remarks
			
      t.timestamps null: false
    end
  end
end
