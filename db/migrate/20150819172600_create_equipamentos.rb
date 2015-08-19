class CreateEquipamentos < ActiveRecord::Migration
  def change
    create_table :equipamentos do |t|
      t.string :item
      t.string :patrimonio
      t.string :numero_serie
      t.string :especificacao
      t.text :observacao

      t.timestamps null: false
    end
  end
end
