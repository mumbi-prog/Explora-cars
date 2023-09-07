class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.bigint :mobile_number, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
