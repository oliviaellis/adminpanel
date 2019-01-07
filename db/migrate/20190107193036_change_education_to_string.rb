class ChangeEducationToString < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :education, :string
    change_column :instructors, :education, :string
  end
end
