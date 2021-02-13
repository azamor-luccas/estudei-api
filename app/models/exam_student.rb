class ExamStudent < ApplicationRecord
  belongs_to :student
  belongs_to :exam
  has_many :exam_question_students
end
