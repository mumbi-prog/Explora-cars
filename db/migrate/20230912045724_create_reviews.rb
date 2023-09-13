class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :rating
      t.references :car, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end