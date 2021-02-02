class AddNameGenderStatusToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :name, :string
    add_column :students, :gender, :string
    add_column :students, :status, :string
  end
end
