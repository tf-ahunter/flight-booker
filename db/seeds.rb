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
    dep_airport: "ABC",
    arr_airport: "DEF",
    dep_time: "2023-10-13 14:00:00",      
    duration: "45"
},
{
    dep_airport: "GHI",
    arr_airport: "ABC",
    dep_time: "2023-12-13 10:00:00",
    duration: "120"
},
{
    dep_airport: "XYZ",
    arr_airport: "DEF",
    dep_time: "2024-05-12 11:00:00",
    duration: "90"
},
{
    dep_airport: "XYZ",
    arr_airport: "DEF",
    dep_time: "2024-05-12 12:00:00",
    duration: "90"
},
{
    dep_airport: "ABC",
    arr_airport: "XYZ",
    dep_time: "2025-04-13 16:00:00",
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



