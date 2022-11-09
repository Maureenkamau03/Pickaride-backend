class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.integer :customer_id
      t.integer :car_id
      t.string :car_description
      t.string :registration_no
      t.date :pickup_date
      t.date :return_date
    end
  end
end
