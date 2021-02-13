class ExamQuestionStudent < ApplicationRecord
  belongs_to :question
  belongs_to :questions_alternative
  belongs_to :student
  belongs_to :exam_questions
end
