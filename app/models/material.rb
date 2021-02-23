class Material < ApplicationRecord
  belongs_to :lesson
  has_many :material_students

  def color
    colors = ["#fff2b7", "#def0e4", "#dedef0", "#edddee", "#e1f1f2", "#fedde8"]
    colors[self.id % colors.length]
  end
end
