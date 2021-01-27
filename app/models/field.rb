class Field < ApplicationRecord
  belongs_to :course
  has_many :subjects
end
