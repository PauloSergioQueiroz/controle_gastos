class CreateItemRegistroDiarios < ActiveRecord::Migration[5.0]
  def change
    create_table :item_registro_diarios do |t|
      t.float :valor
      t.references :item, foreign_key: true
      t.references :registro_diario, foreign_key: true

      t.timestamps
    end
  end
end
