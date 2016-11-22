class CreateStudentsSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :students_subjects do |t|
      t.integer :student_id
      t.integer :subject_id
    end
  end
end
