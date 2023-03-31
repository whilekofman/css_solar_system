class ChangeColumnNamesMoonsAndPlanets < ActiveRecord::Migration[7.0]
  def change
    rename_column :planets, :diameter, :diameter_in_mi
    rename_column :moons, :diameter, :diameter_in_mi

    rename_column :planets, :mean_orbital_velocity, :orbital_velocity_in_km_s
    rename_column :moons, :mean_orbital_velocity, :orbital_velocity_in_km_s

    remove_column :planets, :velocity
    remove_column :moons, :velocity

    remove_column :planets, :rotational_velocity
    remove_column :moons, :rotational_velocity
    
    remove_column :planets, :eccentricity
    remove_column :moons, :eccentricity

    
  end
end
