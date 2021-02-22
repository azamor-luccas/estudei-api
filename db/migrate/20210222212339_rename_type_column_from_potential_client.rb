class RenameTypeColumnFromPotentialClient < ActiveRecord::Migration[6.0]
  def change
    rename_column :potential_clients, :type, :client_type
  end
end
