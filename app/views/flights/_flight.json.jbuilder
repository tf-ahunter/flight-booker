json.extract! flight, :id, :dep_airport, :arr_airport, :dep_time, :duration, :created_at, :updated_at
json.url flight_url(flight, format: :json)
