class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :nome, limit: 150
      t.text :descricao
      t.float :preco

      t.timestamps
    end
  end
end
