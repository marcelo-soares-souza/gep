class AddDadosToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nome, :string
    add_column :users, :cpf, :string
  end
end
