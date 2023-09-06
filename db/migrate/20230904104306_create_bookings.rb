class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :car_id
      t.integer :customer_id
      t.float :total_price

      t.timestamps
    end
  end
end
