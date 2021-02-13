class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.integer :duration_in_seconds
      t.string :status
      t.string :video_url
      t.string :vimeo_id
      t.references :lesson, null: true, foreign_key: false

      t.timestamps
    end
  end
end
