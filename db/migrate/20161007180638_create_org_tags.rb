class CreateOrgTags < ActiveRecord::Migration
  def change
    create_table :org_tags do |t|
      t.integer :organization_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
