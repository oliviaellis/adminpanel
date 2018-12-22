class CreateStudentsCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students do |t|
      t.references :cohort, foreign_key: true
      t.references :student, foreign_key: true
    end
  end
end
