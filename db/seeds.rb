# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flight.destroy_all

Flight.create!([{
    dep_airport: "UDK",
    arr_airport: "KQM",
    dep_time: "2023-10-13 14:35:00",      
    duration: "45"
},
{
    dep_airport: "LQN",
    arr_airport: "UVJ",
    dep_time: "2023-12-13 10:30:00",
    duration: "120"
},
{
    dep_airport: "LQM",
    arr_airport: "NYC",
    dep_time: "2024-05-12 10:55:00",
    duration: "90"
},
{
    dep_airport: "YHB",
    arr_airport: "SAO",
    dep_time: "2025-04-13 16:10:00",
    duration: "100"
}])


Booking.destroy_all

Booking.create!([{
    passenger_name: "Bob McTable",
    passenger_email: "Bob@gmail.com",
    no_passenger: "3",      
    flight_id: "5"
},
{
    passenger_name: "Steve O'Chip",
    passenger_email: "Steve@gmail.com",
    no_passenger: "1",      
    flight_id: "3"
},
{
    passenger_name: "Mike McMike",
    passenger_email: "Mike@gmail.com",
    no_passenger: "5",      
    flight_id: "1"
},
{
    passenger_name: "Amy Chicken",
    passenger_email: "Amy@gmail.com",
    no_passenger: "3",      
    flight_id: "5"
}])



