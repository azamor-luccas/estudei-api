class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.integer :reaction_type
      t.references :student, null: false, foreign_key: false
      t.references :commentary, null: false, foreign_key: false

      t.timestamps
    end
  end
end
