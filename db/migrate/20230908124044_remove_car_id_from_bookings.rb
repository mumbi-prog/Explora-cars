class RemoveCarIdFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :car_id, :integer
  end
end
