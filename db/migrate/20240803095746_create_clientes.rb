class CreateClientes < ActiveRecord::Migration[7.1]
  def change
    create_table :clientes do |t|
      t.string :nome, limit: 250
      t.string :telefone, limit: 15
      t.text :endereco

      t.timestamps
    end
  end
end
