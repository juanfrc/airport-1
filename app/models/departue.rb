class Departue < ActiveRecord::Base
  belongs_to :flight

  enum status: ['Closed', 'On gate' , 'Boarding', 'Took off']
end
