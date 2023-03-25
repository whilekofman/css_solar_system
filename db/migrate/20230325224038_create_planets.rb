class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name, null: false
      t.integer :num_of_moons, null: false
      t.float :diameter, null: false
      t.float :distance_from_sun, null: false
      t.float :velocity, null: false
      t.float :rotational_velocity, null: false
      t.float :eccentricity, null: false
      t.float :planetary_year, null: false
      t.float :rotation_period, null: false
      t.float :mean_orbital_velocity, null: false
      t.boolean :solid, null: false
      t.text :facts, null: false, array: true, default: []
      t.float :temperature, null: false
      t.references :star, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end