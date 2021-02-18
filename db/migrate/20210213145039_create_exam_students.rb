class CreateExamStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_students do |t|
      t.boolean :finished
      t.float :progress
      t.integer :number_of_correct_answers
      t.references :student, null: false, foreign_key: false
      t.references :exam, null: false, foreign_key: false

      t.timestamps
    end
  end
end
