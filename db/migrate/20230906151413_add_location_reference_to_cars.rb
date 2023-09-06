class AddLocationReferenceToCars < ActiveRecord::Migration[7.0]
  def change
      change_table :cars do |t|
        t.references :location, foreign_key: true, null: true
      end
  end
end
  
