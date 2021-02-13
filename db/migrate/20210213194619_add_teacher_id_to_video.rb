class AddTeacherIdToVideo < ActiveRecord::Migration[6.0]
  def change
    add_reference :videos, :teacher, null: true, foreign_key: false
  end
end
