class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.references :course, null: false, foreign_key: false

      t.timestamps
    end
  end
end
