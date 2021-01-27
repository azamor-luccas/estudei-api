class Subject < ApplicationRecord
  belongs_to :field
  has_many :lessons
end
