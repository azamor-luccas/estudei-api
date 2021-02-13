class QuestionAlternative < ApplicationRecord
  belongs_to :question
  has_many :exam_question_students
end
