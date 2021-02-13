class Student < ApplicationRecord
    has_many :exam_students
    has_many :exam_question_students
    has_many :reactions
    has_many :commentaries
    has_many :video_students
    has_many :material_students
    has_many :course_students
    has_many :logs
    has_many :ranking_actions
    has_many :rankings
    has_secure_password
end
