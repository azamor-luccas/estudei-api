class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :exams
  has_many :lesson_questions
end
