class RenameExamQuestionStudentColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :exam_question_students, :exam_id, :exam_question_id
    rename_column :exam_question_students, :questions_alternative_id, :question_alternative_id
  end
end
