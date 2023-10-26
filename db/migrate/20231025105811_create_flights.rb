class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.references :departure_airport, null: false
      t.references :arrival_airport, null: false

      t.datetime :flight_time
      t.integer :flight_duration
      t.timestamps
    end
    add_foreign_key :flights, :airports, column: :departure_airport_id
    add_foreign_key :flights, :airports, column: :arrival_airport_id
  end
end