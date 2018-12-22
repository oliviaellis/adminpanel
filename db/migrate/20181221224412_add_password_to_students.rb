class AddPasswordToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :string, :password_digest
  end
end
