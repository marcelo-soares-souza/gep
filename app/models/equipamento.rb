class Equipamento < ActiveRecord::Base
  enum local_retirada: [ "LICOSC", "NESP" ]

  belongs_to :tipo
  belongs_to :marca
  belongs_to :modelo

end
