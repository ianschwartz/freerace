class ChangeCheckpointsToLocations < ActiveRecord::Migration[5.1]
  def self.up
  	rename_column :photos, :checkpoint_id, :location_id
    rename_table :checkpoints, :locations
  end

  def self.down
  	rename_column :photos, :location_id, :checkpoint_id
    rename_table :locations, :checkpoints
  end
end