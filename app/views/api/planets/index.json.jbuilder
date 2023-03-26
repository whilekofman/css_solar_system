@planets.each do |planet|
    json.set! planet.id do
      json.extract! planet, :id, :name, :num_of_moons, :mass, :diameter, :distance_from_sun, :velocity,
        :rotational_velocity, :eccentricity, :planetary_year, :rotation_period, :mean_orbital_velocity,
        :temperature, :solid
      
      json.moons planet.moons do |moon|
        json.extract! moon, :id, :name, :diameter, :distance_from_planet, :orbit_period
      end
    end
end