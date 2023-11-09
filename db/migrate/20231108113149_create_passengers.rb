class CreatePassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :passengers do |t|
      t.string :passenger_name
      t.string :passenger_email
      t.references :booking, null: false

      t.timestamps
    end
    add_foreign_key :passengers, :bookings, column: :booking_id
  end
end
