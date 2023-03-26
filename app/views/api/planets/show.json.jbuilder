json.planet do
    json.extract! @planet, :id, :name, :num_of_moons, :mass, :diameter, :distance_from_sun, :velocity,
    :rotational_velocity, :eccentricity, :planetary_year, :rotation_period, :mean_orbital_velocity,
    :temperature, :solid

    json.moons @planet.moons do |moon|
        json.extract! moon, :id, :name, :diameter, :distance_from_planet, :facts, :velocity, :rotational_velocity,
        :eccentricity, :orbital_period, :rotation_period, :mean_orbital_velocity,
        :temperature, :planet_id
    end
end