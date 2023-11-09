class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false

      t.timestamps
    end
    add_foreign_key :bookings, :flights, column: :flight_id
  end
end
