class Course < ApplicationRecord
    has_many :fields
    has_many :course_students
    has_many :logs
    has_many :ranking_actions
    has_many :rankings
end
