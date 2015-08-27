class AddRetiradoFromEquipamentos < ActiveRecord::Migration
  def change
    add_column :equipamentos, :local_retirada, :integer
  end
end
