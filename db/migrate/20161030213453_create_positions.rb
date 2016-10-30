class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.float :hour_commitment
      t.text :description
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
