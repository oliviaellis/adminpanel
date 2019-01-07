class AddCourseIdToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :course_id, :integer
    add_index  :cohorts, :course_id
  end
end
