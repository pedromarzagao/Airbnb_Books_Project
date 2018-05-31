class ChangeBookingDateDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :date_begin, :date
    change_column :bookings, :date_end, :date
  end
end
