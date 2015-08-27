class Equipamento < ActiveRecord::Base
  enum local_retirada: [ "LICOSC", "NESP" ]
end
