class CreateRegistroDiarios < ActiveRecord::Migration[5.0]
  def change
    create_table :registro_diarios do |t|
      t.datetime :data_registro

      t.timestamps
    end
  end
end
