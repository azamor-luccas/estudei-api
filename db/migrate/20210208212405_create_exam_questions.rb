class CreateExamQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_questions do |t|
      t.references :exam, null: false, foreign_key: false
      t.references :question, null: false, foreign_key: false

      t.timestamps
    end
  end
end
