class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :bike_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price_per_day
      t.integer :num_days

      t.timestamps
    end
  end
end
