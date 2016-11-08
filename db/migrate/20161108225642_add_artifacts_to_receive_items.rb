class AddArtifactsToReceiveItems < ActiveRecord::Migration
  def change
  	add_column :receive_items, :artifact, :string
  end
end
