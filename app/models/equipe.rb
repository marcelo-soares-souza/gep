class Equipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :projeto

  enum situacao: [ "Voluntário", "Bolsista", "Sem Vínculo" ]

end
