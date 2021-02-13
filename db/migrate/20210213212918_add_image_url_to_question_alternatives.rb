class AddImageUrlToQuestionAlternatives < ActiveRecord::Migration[6.0]
  def change
    add_column :question_alternatives, :image_url, :string
  end
end
