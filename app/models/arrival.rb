class Arrival < ActiveRecord::Base
  belongs_to :flight
  enum status: ['On time', 'Delayed' , 'Landing', 'Landed']

end	


