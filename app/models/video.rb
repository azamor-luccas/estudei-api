class Video < ApplicationRecord
  belongs_to :lesson
  belongs_to :teacher, optional: true
  has_many :video_students
  
  def color
    colors = ["#fff2b7", "#def0e4", "#dedef0", "#edddee", "#e1f1f2", "#fedde8"]
    colors[self.id % colors.length]
  end
end
