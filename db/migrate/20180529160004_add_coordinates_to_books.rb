class AddCoordinatesToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :latitude, :float
    add_column :books, :longitude, :float
  end
end
