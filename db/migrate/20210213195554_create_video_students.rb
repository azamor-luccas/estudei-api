class CreateVideoStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :video_students do |t|
      t.float :progress_percentage
      t.integer :progress_in_seconds
      t.boolean :finished
      t.references :video, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
