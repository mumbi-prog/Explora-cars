class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.integer :year
      t.integer :price_per_day
      t.string :image_url
      t.string :transmission
      t.string :body_type
      t.string :category
      t.decimal :fuel_consumption
      t.integer :no_of_seats
      t.string :fuel_type
      t.boolean :is_rented
      t.references :location, null: true, foreign_key: true
      t.timestamps
    end
  end
end
