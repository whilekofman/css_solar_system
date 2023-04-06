json.star do
    json.extract! @star, :id, :name, :facts, :diameter, :temperature, :mass
end

json.planets do
    @star.planets.each do |planet|
        planet_moons = planet.moons

        json.set! planet.id do
            json.extract! planet, :id, :name, :num_of_moons, :facts, :diameter_in_mi, :distance_from_sun, :planetary_year, :rotation_period, :orbital_velocity_in_km_s, :solid, :temperature_high, :temperature_low, :origin_of_name, :first_discovery, :discovered_by
            json.moons do
                planet.moons.each do |moon|
                    json.set! moon.id do
                        json.extract! moon, :id, :name, :diameter_in_mi, :distance_from_planet, :facts, :orbital_period, :rotation_period, :orbital_velocity_in_km_s, :temperature_high, :temperature_low, :origin_of_name, :first_discovery, :discovered_by
                    end
                end
            end
        end
    end
end


