class VideoStudent < ApplicationRecord
  belongs_to :video
  belongs_to :student
end
