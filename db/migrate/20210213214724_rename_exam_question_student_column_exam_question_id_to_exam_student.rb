class RenameExamQuestionStudentColumnExamQuestionIdToExamStudent < ActiveRecord::Migration[6.0]
  def change
    rename_column :exam_question_students, :exam_question_id, :exam_student_id
  end
end
