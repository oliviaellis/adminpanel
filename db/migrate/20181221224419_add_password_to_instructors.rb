class AddPasswordToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :string, :password_digest
  end
end
