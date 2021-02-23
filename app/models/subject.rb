class Subject < ApplicationRecord
  belongs_to :field
  has_many :lessons

  def color
    colors = ["#fff2b7", "#def0e4", "#dedef0", "#edddee", "#e1f1f2", "#fedde8"]
    colors[self.id % colors.length]
  end
end
