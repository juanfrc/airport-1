# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Avianca", "Chiva Colombia"].each do |airline|
	Airline.create(name: airline)
end

@aerolinea1 = Airline.first.id
@aerolinea2 = Airline.last.id

Flight.create(number: 21, airline_id: @aerolinea1)
Departue.create(flight_id: 1, date: Time.now, status:"On gate")
Arrival.create(flight_id:1, date: Time.now + 5.hours, status:"On time")
Flight.create(number: 24, airline_id: @aerolinea1)
Departue.create(flight_id: 2, date: Time.now + 12.minutes, status:"Closed")
Arrival.create(flight_id:2, date: Time.now + 45.minutes, status:"Delayed")

Flight.create(number: 543, airline_id: @aerolinea2)
Departue.create(flight_id: 3, date: Time.now + 23.minutes, status:"Boarding")
Arrival.create(flight_id:3, date: Time.now + 10.hours, status:"Landing")
Flight.create(number: 542, airline_id: @aerolinea2)
Departue.create(flight_id: 4, date: Time.now - 15.minutes, status:"Took off")
Arrival.create(flight_id:4, date: Time.now + 90.minutes, status:"Landed")


