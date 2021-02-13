class Question < ApplicationRecord
    has_many :question_alternatives
    has_many :exam_questions
    has_many :lesson_questions
    has_many :exam_question_students
    has_many :commentaries
end
