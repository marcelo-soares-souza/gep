class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
