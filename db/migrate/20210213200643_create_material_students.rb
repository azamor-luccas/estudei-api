class CreateMaterialStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :material_students do |t|
      t.references :material, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
