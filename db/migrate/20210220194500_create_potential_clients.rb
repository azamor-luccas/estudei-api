class CreatePotentialClients < ActiveRecord::Migration[6.0]
  def change
    create_table :potential_clients do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.string :type
      t.string :extras

      t.timestamps
    end
  end
end
