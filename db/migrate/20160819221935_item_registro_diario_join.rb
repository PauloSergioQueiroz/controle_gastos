class ItemRegistroDiarioJoin < ActiveRecord::Migration[5.0]
  def change
    create_table :item_registro_diarios do |t|
      t.belongs_to :item, index: true
      t.belongs_to :registro_diario, index: true
      t.float :valor
      t.timestamps
    end
  end
end
