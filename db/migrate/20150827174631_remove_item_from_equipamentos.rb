class RemoveItemFromEquipamentos < ActiveRecord::Migration
  def change
    remove_column :equipamentos, :item, :string
  end
end
