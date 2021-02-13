class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :download_link
      t.string :status
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
