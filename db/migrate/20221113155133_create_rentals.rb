class CreateRentals < ActiveRecord::Migration[6.1]
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.integer :car_id
      t.string :name
      t.string :phone_no
      t.string :car_description
      t.string :registration_no
      t.string :licence

    end
  end
end
