class RemoveEspecificacaoFromEquipamentos < ActiveRecord::Migration
  def change
    remove_column :equipamentos, :especificacao, :string
  end
end
