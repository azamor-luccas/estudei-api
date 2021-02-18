class ExamQuestionStudent < ApplicationRecord
  belongs_to :question
  belongs_to :question_alternative
  belongs_to :student
  belongs_to :exam_student
end
