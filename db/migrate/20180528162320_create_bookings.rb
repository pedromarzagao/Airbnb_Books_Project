class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.boolean :paid
      t.datetime :date_begin
      t.datetime :date_end
      t.integer :price
      t.reference :user
      t.reference :book

      t.timestamps
    end
  end
end
