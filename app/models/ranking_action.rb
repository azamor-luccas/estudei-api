class RankingAction < ApplicationRecord
  belongs_to :ranking
  belongs_to :student
  belongs_to :course
end
