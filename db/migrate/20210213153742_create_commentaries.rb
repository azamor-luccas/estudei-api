class CreateCommentaries < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaries do |t|
      t.string :commentary
      t.integer :total_likes
      t.integer :total_deslikes
      t.references :student, null: false, foreign_key: false
      t.references :question, null: false, foreign_key: false

      t.timestamps
    end
  end
end
