class AddCellphoneToPotentialClient < ActiveRecord::Migration[6.0]
  def change
    add_column :potential_clients, :cellphone, :string
  end
end
