class Commentary < ApplicationRecord
  belongs_to :student
  belongs_to :question
  has_many :reactions

  def student_name
    #BACKLOG return student image url
    self.student.as_json(only: [:name])
  end
end
