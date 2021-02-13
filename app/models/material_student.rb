class MaterialStudent < ApplicationRecord
  belongs_to :material
  belongs_to :student
end
