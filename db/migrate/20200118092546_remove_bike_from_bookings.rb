class RemoveBikeFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :bike_id, :integer
  end
end