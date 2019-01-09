class AddInstructorIdToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :instructor_id, :integer
    add_index  :cohorts, :instructor_id
  end
end
