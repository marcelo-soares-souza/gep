class CreateEmprestimos < ActiveRecord::Migration
  def change
    create_table :emprestimos do |t|
      t.references :user, index: true, foreign_key: true
      t.references :equipamento, index: true, foreign_key: true
      t.date :data_inicio
      t.date :data_fim
      t.integer :situacao

      t.timestamps null: false
    end
  end
end
