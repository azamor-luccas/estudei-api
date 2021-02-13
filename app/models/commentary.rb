class Commentary < ApplicationRecord
  belongs_to :student
  belongs_to :question
  has_many :reactions
end
