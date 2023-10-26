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
    departure_airport_id:  106,
    arrival_airport_id:  107,     
    flight_time: "2023-10-13 13:00:00",
    flight_duration: "30"
},
{
    departure_airport_id:  108,
    arrival_airport_id:  109,
    flight_time: "2023-10-13 14:00:00",
    flight_duration: "60"
},
{
    departure_airport_id:  110,
    arrival_airport_id:  109,
    flight_time: "2023-10-13 15:00:00",
    flight_duration: "20"
},
{
    departure_airport_id:  108,
    arrival_airport_id:  107,
    flight_time: "2023-10-13 16:00:00",
    flight_duration: "100"
},
{
    departure_airport_id:  106,
    arrival_airport_id:  107,
    flight_time: "2023-10-13 17:00:00",
    flight_duration: "120"
}])


