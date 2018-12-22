class AddEmailToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :email, :string
    add_index :instructors, :email, unique: true
  end
end
