@planets.each do |planet|
    json.set! planet.id do
      # json.extract! planet, :id, :name, :num_of_moons, :mass, :diameter, :distance_from_sun, :velocity,
      #   :rotational_velocity, :eccentricity, :planetary_year, :rotation_period, :mean_orbital_velocity,
      #   :temperature, :solid
      json.extract! planet, :id, :name, :num_of_moons, :diameter_in_mi, :distance_from_sun, :planetary_year, :rotation_period, :orbital_velocity_in_km_s, :solid, :facts, :temperature_high, :temperature_low, :origin_of_name, :first_discovery, :discovered_by
      
      # json.moons planet.moons do |moon|
      #   json.set! moon.id do
      #     json.extract! moon, :id, :name, :diameter_in_mi, :distance_from_planet, :orbit_period, :facts, :temperature_high, :temperature_low, :origin_of_name, :first_discovery, :discovered_by
      #   end
      #   # json.extract! moon, :id, :name, :diameter, :distance_from_planet, :orbit_period
      # end
    end
end