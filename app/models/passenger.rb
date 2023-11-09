class Passenger < ApplicationRecord
    has_many :flights, class_name: 'Flight', foreign_key: 'flight_id'
    has_many :bookings, class_name: 'Booking', foreign_key: 'booking_id'
 
 
 
end
 