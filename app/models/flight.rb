class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: 'Airport'
    belongs_to :arrival_airport, class_name: 'Airport'

    has_many :flights, class_name: 'Flight' , foreign_key: 'flight_id'

    has_many :bookings

    delegate :departure_airport_code, to: :departure_airport
    

    def flight_time_formatted
        flight_time.strftime("%F %R")
    end
end
