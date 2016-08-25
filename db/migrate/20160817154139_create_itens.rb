class CreateItens < ActiveRecord::Migration[5.0]
  def change
    create_table :itens do |t|
      t.string :nome
      t.string :tipo
      t.string :descricao
      t.string :frequencia
      t.string :dia_semana
      t.string :dia_mes

      t.timestamps
    end
  end
end
