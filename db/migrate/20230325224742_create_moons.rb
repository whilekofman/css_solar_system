class CreateMoons < ActiveRecord::Migration[7.0]
  def change
    create_table :moons do |t|
      t.string :name, null: false
      t.float :diameter, null: false
      t.float :distance_from_planet, null: false
      t.text :facts, null: false, array: true, default: []
      t.float :velocity, null: false
      t.float :rotational_velocity, null: false
      t.float :eccentricity, null: false
      t.float :orbital_period, null: false
      t.float :rotation_period, null: false
      t.float :mean_orbital_velocity, null: false
      t.float :temperature, null: false
      t.references :planet, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end