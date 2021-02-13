class ExamQuestion < ApplicationRecord
  belongs_to :exam
  belongs_to :questions
  has_many :exam_question_students
end
