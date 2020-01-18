class AddBikeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :bike, foreign_key: true
  end
end
