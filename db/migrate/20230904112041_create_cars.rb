class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :year
      t.float :price_per_day
      t.boolean :is_rented
      t.string :transmission
      t.string :body_type
      t.string :category
      t.string :fuel_consumption
      t.integer :no_of_seats
      t.string :fuel_type

      t.timestamps
    end
  end
end
