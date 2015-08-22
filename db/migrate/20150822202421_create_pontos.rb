class CreatePontos < ActiveRecord::Migration
  def change
    create_table :pontos do |t|
      t.references :user, index: true, foreign_key: true
      t.datetime :data_hora
      t.integer :situacao

      t.timestamps null: false
    end
  end
end
