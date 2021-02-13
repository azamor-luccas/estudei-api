class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.integer :exam_type
      t.references :lesson, null: true, foreign_key: false

      t.timestamps
    end
  end
end
