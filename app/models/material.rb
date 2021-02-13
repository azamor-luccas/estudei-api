class Material < ApplicationRecord
  belongs_to :lesson
  has_many :material_students
end
