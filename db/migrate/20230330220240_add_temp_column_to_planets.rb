class AddTempColumnToPlanets < ActiveRecord::Migration[7.0]
  def change
    remove_column :planets, :temperature
    remove_column :moons, :temperature

    add_column :planets, :temperature_high, :float
    add_column :planets, :temperature_low, :float

    add_column :moons, :temperature_high, :float
    add_column :moons, :temperature_low, :float

  end
end
