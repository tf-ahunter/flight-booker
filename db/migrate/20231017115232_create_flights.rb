class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.string :dep_airport
      t.string :arr_airport
      t.datetime :dep_time
      t.integer :duration

      t.timestamps
    end
  end
end
