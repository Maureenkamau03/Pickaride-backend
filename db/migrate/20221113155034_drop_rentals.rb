class DropRentals < ActiveRecord::Migration[6.1]
  def change
    drop_table :rentals
  end
end
