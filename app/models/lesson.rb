class Lesson < ApplicationRecord
  belongs_to :subject
  has_many :exams
  has_many :lesson_questions
  has_many :videos
  has_many :materials

  def color
    colors = ["#fff2b7", "#def0e4", "#dedef0", "#edddee", "#e1f1f2", "#fedde8"]
    colors[self.id % colors.length]
  end
end
