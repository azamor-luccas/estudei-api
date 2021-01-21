class AddLetterToQuestionAlternative < ActiveRecord::Migration[6.0]
  def change
    add_column :question_alternatives, :letter, :string
  end
end
