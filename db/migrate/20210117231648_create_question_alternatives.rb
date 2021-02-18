class CreateQuestionAlternatives < ActiveRecord::Migration[6.0]
  def change
    create_table :question_alternatives do |t|
      t.references :question, null: false, foreign_key: false
      t.boolean :correct
      t.string :description

      t.timestamps
    end
  end
end
