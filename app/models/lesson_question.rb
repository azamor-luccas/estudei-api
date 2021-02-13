class LessonQuestion < ApplicationRecord
  belongs_to :lesson
  belongs_to :questions
end
