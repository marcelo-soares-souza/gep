class CreateEquipes < ActiveRecord::Migration
  def change
    create_table :equipes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :projeto, index: true, foreign_key: true
      t.date :data_inicio
      t.date :data_fim
      t.integer :situacao

      t.timestamps null: false
    end
  end
end
