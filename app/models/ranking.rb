class Ranking < ApplicationRecord
  belongs_to :student
  belongs_to :course
  has_many :ranking_actions
end
