class Video < ApplicationRecord
  belongs_to :lesson
  belongs_to :teacher, optional: true
  has_many :video_students
end
