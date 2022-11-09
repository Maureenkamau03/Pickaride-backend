class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :car_description
      t.integer :mileage
      t.string :images
      t.string :registration_no
      t.boolean :is_hired

    end
  end
end
