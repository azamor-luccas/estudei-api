class Exam < ApplicationRecord
  belongs_to :lesson, optional: true
  has_many :exam_questions
  has_many :exam_students
end
