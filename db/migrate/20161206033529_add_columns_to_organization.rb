class AddColumnsToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :email, :string
    add_column :organizations, :website, :string
    add_column :organizations, :facebook, :string
    add_column :organizations, :youtube, :string
    add_column :organizations, :image, :string
    add_column :organizations, :bridge, :string
    add_column :organizations, :contactname, :string
    add_column :organizations, :contactemail, :string
  end
end
