# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do 
    puts "Destroying tables..."
    # Unnecessary if using `rails db:seed:replant`
    Star.destroy_all
    Planet.destroy_all
    Moon.destroy_all
  
    puts "Resetting primary keys..."
    # For easy testing, so that after seeding, the first `User` has `id` of 1
    ApplicationRecord.connection.reset_pk_sequence!('stars')
    ApplicationRecord.connection.reset_pk_sequence!('planets')
    ApplicationRecord.connection.reset_pk_sequence!('moons')
  
    puts "Creating stars..."
    # Create one user with an easy to remember email and password:
    the_sun = Star.create!(
        name: "Sun",
        mass: 1.989e30,
        facts: ["The Sun is over 4.5 billion years old.", "Many ancient civilisations thought The Sun was a God.", "Sometimes spots on The Sun erupt and mess with our mobile phone signals."],
        diameter: 865370,
        temperature: 5778,
    )

    puts "Creating Planets..."
    
    puts "Creating Mercury..."
    mercury = Planet.create!(
        name: "Mercury",
        num_of_moons: 0,
        diameter_in_mi: 3031.9,
        distance_from_sun: 36.04,
        planetary_year: 88, #days
        rotation_period: 1408,  #in hours
        orbital_velocity_in_km_s: 47.36, #km/s
        solid: 'True',
        facts: ['Mercury is the smallest planet in the solar system.', 'Mercury is the closest planet to the Sun.', 'Mercury is the fastest planet in the solar system.  Being closest to the sun helps!', 'Mercury and Venus are the only planets in our solar system that do not have a moon.'],
        temperature_high: 800,
        temperature_low: -290,
        star_id: the_sun.id
    )
    puts "Creating Venus..."

    venus = Planet.create!(
        name: "Venus",
        num_of_moons: 0,
        diameter_in_mi: 7520.8,
        distance_from_sun: 66.84,
        planetary_year: 225, #days
        rotation_period: 5832,  #in hours
        orbital_velocity_in_km_s: 35.02, #km/s
        solid: 'True',
        facts: ['Venus is the hottest planet in the solar system.', 'Venus is the second brightest object in the sky after the Moon.', 'Venus is the only planet that rotates clockwise from the perspective of an observer on the surface.', 'Venus has the longest day of any planet in the solar system. It takes 243 Earth days for Venus to rotate once on its axis.'],
        temperature_high: 800,
        temperature_low: -290,
        star_id: the_sun.id
    )

    puts "Creating Earth..."
    earth = Planet.create!(
        name: "Earth",
        num_of_moons: 1,
        diameter_in_mi: 7917.5,
        distance_from_sun: 92.84,
        planetary_year: 365, #days
        rotation_period: 24,  #in hours
        orbital_velocity_in_km_s: 29.78, #km/s
        solid: 'True',
        facts: ['You are on Earth right now.', 'The Earth is the only planet not named after a Greek or Roman deity.', 'The Earth is the densest planet in the solar system.','The Earth is the only planet in our solar system that has the conditions necessary to support life as we know it.'],
        temperature_high: 134,
        temperature_low: -128,
        star_id: the_sun.id
    )

    puts "Creating Earth's moon..."
    earths_moon = Moon.create!(
        name: "Moon",
        diameter_in_mi: 2159,
        distance_from_planet: 238900,
        orbital_period: 27.3, #days
        rotation_period: 655.7,  #in hours
        orbital_velocity_in_km_s: 1.022, #km/s
        facts: ['The Moon is Earth\'s only natural satellite.', 'The Moon is the fifth largest natural satellite (there are 200+ moons orbiting planets) in the Solar System.', 'The Moon is the second brightest object in the sky after the Sun.'],
        temperature_high: 224,
        temperature_low: -279,
        planet_id: earth.id
    )
    
    puts "Creating Mars..."
    mars = Planet.create!(
        name: "Mars",
        num_of_moons: 2,
        diameter_in_mi: 4212.3,
        distance_from_sun: 141.6,
        planetary_year: 687, #days
        rotation_period: 24.6,  #in hours
        orbital_velocity_in_km_s: 24.13, #km/s
        solid: 'True',
        facts: ['Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury.', 'Mars is often described as the "Red Planet" because the iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye.', 'Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.'],
        temperature_high: 70,
        temperature_low: -225,
        star_id: the_sun.id
    )

    puts "Creating Mars' moons..."
    phobos = Moon.create!(
        name: "Phobos",
        diameter_in_mi: 14.02, #diameter in miles
        distance_from_planet: 3700, #distance from planet in miles
        orbital_period: 0.31891023, #days
        rotation_period: 7.65,  #in hours
        orbital_velocity_in_km_s: 2.138, #km/s
        facts: ['Phobeos is the larger of Mars\' two moons.', 'Named after the Greek god of fear.', 'Unlike Deimos, Mars\' other moon Phobos orbits a Mars in a retrograde direction.'],
        temperature_high: 25,
        temperature_low: -170,
        planet_id: mars.id
    )

    deimos = Moon.create!(
        name: "Deimos",
        diameter_in_mi: 6.2, #diameter in miles
        distance_from_planet: 14577.37, #distance from planet in miles
        orbital_period: 1.262, #days
        rotation_period: 30.3,  #in hours
        orbital_velocity_in_km_s: 1.351, #km/s
        facts: ['Deimos is the smaller of Mars\' two moons.', 'Named after the Greek god of terror.', 'Unlike Phobos, Mars\' other moon Deimos orbits a Mars in a prograde direction.'],
        temperature_high: 25,
        temperature_low: -170,
        planet_id: mars.id
    )


    puts "Creating Jupiter..."
    jupiter = Planet.create!(
        name: "Jupiter",
        num_of_moons: 95,
        diameter_in_mi: 86881,
        distance_from_sun: 460.35,
        planetary_year: 4332.71, #days
        rotation_period: 9.93,  #in hours
        orbital_velocity_in_km_s: 13.06, #km/s
        solid: 'False',
        facts: ['Jupiter is the biggest planet in our Solar System, and the first of the gas giants.', 'Jupiter is known for having a Great Red Spot, a high pressure region in the atmosphere, producing winds at speeds up to 268 mph and is the largest anticyclonic storm in the solar system', 'Jupiter is named after a Roman God, Jupiter, the king of the gods.'],
        temperature_high: 2420, #atmospheric temperatures F
        temperature_low: -166,
        star_id: the_sun.id
    )

    puts "Creating Jupiter's moons..."
    io = Moon.create!(
        name: "Io",
        diameter_in_mi: 2363.8, #diameter in miles
        distance_from_planet: 217000, #distance from planets cloud tops in miles
        orbital_period: 1.769, #days
        rotation_period: 42.2,  #in hours
        orbital_velocity_in_km_s: 17.33, #km/s
        facts: ['Io is the most volcanically active body in the Solar System.', 'Io\'s orbit, keeping it at more or less a cozy 262,000 miles (422,000 kilometers) from Jupiter, cuts across the planet\'s powerful magnetic lines of force, thus turning Io into a electric generator. Io can develop 400,000 volts across itself and create an electric current of 3 million amperes.', 'The tidal forces generate a tremendous amount of heat within Io, keeping much of its subsurface crust in liquid form seeking any available escape route to the surface to relieve the pressure. Thus, the surface of Io is constantly renewing itself, filling in any impact craters with molten lava lakes and spreading smooth new floodplains of liquid rock. The composition of this material is not yet entirely clear, but theories suggest that it is largely molten sulfur and its compounds (which would account for the varied coloring) or silicate rock (which would better account for the apparent temperatures, which may be too hot to be sulfur).'], #sourced from solarsystem.nasa.gov
        temperature_high: 3000, #volcanic temperatures F
        temperature_low: -202, #average surface temperature F
        planet_id: jupiter.id
    )
   
    puts "Creating Saturn..."
    saturn = Planet.create!(
        name: "Saturn",
        num_of_moons: 83,
        diameter_in_mi: 72367,
        distance_from_sun: 911.03, #million miles
        planetary_year: 10759.50, #days
        rotation_period: 10.8,  #in hours
        orbital_velocity_in_km_s: 9.66, #km/s
        solid: 'False',
        facts: ['Saturn is famous for its rings, which are made up of countless particles of ice and rock ranging in size from tiny grains to giant boulders. The rings are thought to be relatively young, perhaps only a few hundred million years old, and they are constantly changing and evolving.', 'Saturn is the second-largest planet in our solar system, after Jupiter. It is a gas giant, which means it is mostly composed of hydrogen and helium gas.'],
        temperature_high: 570, #atmospheric temperatures F
        temperature_low: -288,
        star_id: the_sun.id
    )

    puts "Creating Uranus..."
    uranus = Planet.create!(
        name: "Uranus",
        num_of_moons: 27,
        diameter_in_mi: 31518,
        distance_from_sun: 1.8265, #billion miles
        planetary_year: 30685.00, #days
        rotation_period: 17.2,  #in hours
        orbital_velocity_in_km_s: 6.8, #km/s
        solid: 'False',
        facts: ['Uranus is the only planet on its side'],
        temperature_high: -371, #atmospheric temperatures F
        temperature_low: -371,
        star_id: the_sun.id
    )

    puts "Creating Neptune..."
    neptune = Planet.create!(
        name: "Neptune",
        num_of_moons: 14,
        diameter_in_mi: 30599,
        distance_from_sun: 2.7796, #billion miles
        planetary_year: 60190.00, #days
        rotation_period: 16.1,  #in hours
        orbital_velocity_in_km_s: 5.44, #km/s
        solid: 'False',
        facts: ['Neptune is the only planet in our solar system not visible to the naked eye'],
        temperature_high: -328, #atmospheric temperatures F
        temperature_low: -360,
        star_id: the_sun.id
    )

    puts "Creating Pluto..."
    pluto = Planet.create!(
        name: "Pluto",
        num_of_moons: 5,
        diameter_in_mi: 1476.7,
        distance_from_sun: 3.7, #billion miles
        planetary_year: 90800, #days
        rotation_period: 153.3,  #in hours
        orbital_velocity_in_km_s: 4.74, #km/s
        solid: 'True',
        facts: ['Pluto is the smallest planet','Some people do not consider pluto to be a planet'],
        temperature_high: -342, #atmospheric temperatures F
        temperature_low: -382,
        star_id: the_sun.id
    )
    puts "Done!"
end