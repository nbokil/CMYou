class RemoveVideo < ActiveRecord::Migration
  def self.up
    remove_column :organizations, :video
  end

end
