# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_10_225145) do

  create_table "cars", force: :cascade do |t|
    t.string "car_description"
    t.integer "mileage"
    t.string "images"
    t.string "registration_no"
    t.boolean "is_hired"
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "car_id"
    t.string "car_description"
    t.string "registration_no"
    t.date "pickup_date"
    t.date "return_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
  end

end
