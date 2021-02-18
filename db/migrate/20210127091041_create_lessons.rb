class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.references :subject, null: false, foreign_key: false

      t.timestamps
    end
  end
end
