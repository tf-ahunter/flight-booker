# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.destroy_all

Airport.create!([{
    airport_code: "ABC"
},
{
    airport_code: "DEF"
},
{
    airport_code: "GHI"
},
{
    airport_code: "JKL"
},
{
    airport_code: "MNO"
}])


Flight.destroy_all

Flight.create!([{
    departure_airport_id:  1,
    arrival_airport_id:  2,     
    flight_time: "2023-10-13 13:00:00",
    flight_duration: "30"
},
{
    departure_airport_id:  5,
    arrival_airport_id:  1,
    flight_time: "2023-10-13 14:00:00",
    flight_duration: "60"
},
{
    departure_airport_id:  3,
    arrival_airport_id:  4,
    flight_time: "2023-10-13 15:00:00",
    flight_duration: "20"
},
{
    departure_airport_id:  2,
    arrival_airport_id:  5,
    flight_time: "2023-10-13 16:00:00",
    flight_duration: "100"
},
{
    departure_airport_id:  4,
    arrival_airport_id:  2,
    flight_time: "2023-10-13 17:00:00",
    flight_duration: "120"
}])


Booking.destroy_all
Booking.create!([{
    flight_id: 1,
},
{
    flight_id: 5,
},
{
    flight_id: 2,
},
{
    flight_id: 3,
},
{
    flight_id: 4,
}])

Passenger.destroy_all
Passenger.create!([{
    passenger_name: "Bob",
    passenger_email: "bob@bob.com",
    booking_id: 1,
},
{
    passenger_name: "Steve",
    passenger_email: "steve@steve.com",
    booking_id: 2,
},
{
    passenger_name: "Mark",
    passenger_email: "mark@mark.com",
    booking_id: 3,
},
{
    passenger_name: "Jim",
    passenger_email: "jim@jim.com",
    booking_id: 4,
},
{
    passenger_name: "Bart",
    passenger_email: "bart@bart.com",
    booking_id: 5,
}])


