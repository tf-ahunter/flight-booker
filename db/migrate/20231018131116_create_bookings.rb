class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :passenger_name
      t.string :passenger_email
      t.integer :no_passenger   
      t.integer :flight_id
      t.timestamps
    end
  end
end
