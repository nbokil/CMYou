class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :dorm
      t.integer :class_year
      t.integer :user_id
      t.boolean :active

      t.timestamps null: false
    end
  end
end
