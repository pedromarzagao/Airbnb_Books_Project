class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.boolean :paid
      t.datetime :date_begin
      t.datetime :date_end
      t.integer :price
      t.references :user
      t.references :book

      t.timestamps
    end
  end
end
