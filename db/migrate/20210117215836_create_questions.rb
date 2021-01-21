class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :statement
      t.string :subject

      t.timestamps
    end
  end
end
