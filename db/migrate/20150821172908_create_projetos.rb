class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :titulo
      t.date :data_inicio
      t.date :data_fim

      t.timestamps null: false
    end
  end
end
