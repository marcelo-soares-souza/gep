class AddDadosRefToEquipamentos < ActiveRecord::Migration
  def change
    add_reference :equipamentos, :tipo, index: true, foreign_key: true
    add_reference :equipamentos, :modelo, index: true, foreign_key: true
    add_reference :equipamentos, :marca, index: true, foreign_key: true
  end
end
