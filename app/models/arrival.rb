class Arrival < ActiveRecord::Base
  belongs_to :flight
  #validates :date, greater_than: ->{ departue.date }
  enum status: ['On time', 'Delayed' , 'Landing', 'Landed']

end	


