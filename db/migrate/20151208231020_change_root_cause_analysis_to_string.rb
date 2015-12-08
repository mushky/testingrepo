class ChangeRootCauseAnalysisToString < ActiveRecord::Migration
  def change
  	change_column :cpars, :root_cause_analysis_required, :string
  end
end
