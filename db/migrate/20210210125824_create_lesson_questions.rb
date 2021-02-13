class CreateLessonQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_questions do |t|
      t.references :lesson, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
