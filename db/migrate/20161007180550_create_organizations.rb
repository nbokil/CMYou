class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.float :hour_commitment
      t.string :video
      t.boolean :active

      t.timestamps null: false
    end
  end
end
