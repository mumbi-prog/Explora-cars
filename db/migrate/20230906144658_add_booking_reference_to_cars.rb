class AddBookingReferenceToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :booking, foreign_key: true
  end
end
