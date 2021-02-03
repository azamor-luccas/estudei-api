class AddStatusToSubject < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :status, :string
  end
end
