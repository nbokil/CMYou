class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
      t.integer :student_id
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
