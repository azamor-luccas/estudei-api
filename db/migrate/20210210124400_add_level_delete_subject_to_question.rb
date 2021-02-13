class AddLevelDeleteSubjectToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :level, :integer
    remove_column :questions, :subject
  end
end
