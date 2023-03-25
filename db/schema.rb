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

ActiveRecord::Schema[7.0].define(version: 2023_03_25_224742) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "moons", force: :cascade do |t|
    t.string "name", null: false
    t.float "diameter", null: false
    t.float "distance_from_planet", null: false
    t.text "facts", default: [], null: false, array: true
    t.float "velocity", null: false
    t.float "rotational_velocity", null: false
    t.float "eccentricity", null: false
    t.float "orbital_period", null: false
    t.float "rotation_period", null: false
    t.float "mean_orbital_velocity", null: false
    t.float "temperature", null: false
    t.bigint "planet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_moons_on_planet_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name", null: false
    t.integer "num_of_moons", null: false
    t.float "diameter", null: false
    t.float "distance_from_sun", null: false
    t.float "velocity", null: false
    t.float "rotational_velocity", null: false
    t.float "eccentricity", null: false
    t.float "planetary_year", null: false
    t.float "rotation_period", null: false
    t.float "mean_orbital_velocity", null: false
    t.boolean "solid", null: false
    t.text "facts", default: [], null: false, array: true
    t.float "temperature", null: false
    t.bigint "star_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_id"], name: "index_planets_on_star_id"
  end

  create_table "stars", force: :cascade do |t|
    t.string "name", null: false
    t.text "facts", default: [], null: false, array: true
    t.float "diameter", null: false
    t.float "temperature", null: false
    t.float "mass", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "moons", "planets"
  add_foreign_key "planets", "stars"
end
