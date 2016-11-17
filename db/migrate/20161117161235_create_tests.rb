class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.integer :date
      t.integer :subject_id
      t.string :name
    end
  end
end
