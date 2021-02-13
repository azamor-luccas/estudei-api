class CreateExamQuestionStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_question_students do |t|
      t.boolean :is_correct
      t.references :question, null: false, foreign_key: false
      t.references :questions_alternative, null: true, foreign_key: false
      t.references :student, null: false, foreign_key: false
      t.references :exam, null: false, foreign_key: false

      t.timestamps
    end
  end
end
