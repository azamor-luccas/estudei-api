class AddPriorityToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :priority, :integer
  end
end
