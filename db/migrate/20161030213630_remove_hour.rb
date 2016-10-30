class RemoveHour < ActiveRecord::Migration
  def self.up
    remove_column :organizations, :hour_commitment
  end

end
