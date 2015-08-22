class Ponto < ActiveRecord::Base
  belongs_to :user
  enum situacao: [ "Entrada", "Saída" ]
end
