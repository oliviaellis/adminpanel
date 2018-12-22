class AddAdminToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :admin, :boolean
  end
end
