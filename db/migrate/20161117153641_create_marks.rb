class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.string :mark
      t.integer :student_id
      t.integer :test_id
    end

  end
end
