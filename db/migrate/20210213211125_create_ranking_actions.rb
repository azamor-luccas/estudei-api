class CreateRankingActions < ActiveRecord::Migration[6.0]
  def change
    create_table :ranking_actions do |t|
      t.string :action_type
      t.float :points
      t.float :multiplier
      t.references :ranking, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
