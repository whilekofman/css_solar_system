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
        origin_of_name: 'Named after the Roman god of commerce and thievery',
        first_discovery: 1631,
        discovered_by: 'Thomas Harriott and Galileo Galilei observe Mercury with the newly invented telescope.',
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
        facts: ['Venus is the hottest planet in the solar system.', 'Venus is the second brightest object in the sky after the Moon.', 'Venus along with Uranus are the only planets that rotate clockwise.', 'Venus has the longest day of any planet in the solar system. It takes 243 Earth days for Venus to rotate once on its axis.'],
        temperature_high: 800,
        temperature_low: -290,
        origin_of_name: 'Named after the Roman goddess of love and beauty',
        first_discovery: 1610,
        discovered_by: 'Galileo Galilei who recognized Venus goes through phases like our moon.',
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
        origin_of_name: 'Named after the Old English word for the ground',
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
        origin_of_name: 'The word moon can be traced to the word mōna, an Old English word from medieval times. Mōna shares its origins with the Latin words metri, which means to measure, and mensis, which means month. So, we see that the moon is called the moon because it is used to measure the months.',
        first_discovery: 1609,
        discovered_by: 'Galileo Galilei, though the moon can be seen by the named eye, and has been seen by many cultures throughout history.  Galileo observed the moon with a telescope that was superior to the ones used by his contemporaries.  This allowed Galileo to see the moon\'s craters and mountains in greater detail.',
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
        origin_of_name: 'Named after the Roman god of war',
        first_discovery: 1610,
        discovered_by: 'Galileo Galilei was the first person to observe Mars with a telescope.',
    )

    puts "Creating Mars' moons..."
    phobos = Moon.create!(
        name: "Phobos",
        diameter_in_mi: 14.02, #diameter in miles
        distance_from_planet: 3700, #distance from planet in miles
        orbital_period: 0.31891023, #days
        rotation_period: 7.65,  #in hours
        orbital_velocity_in_km_s: 2.138, #km/s
        facts: ['Phobeos is the larger of Mars\' two moons.', 'Unlike Deimos, Mars\' other moon Phobos orbits a Mars in a retrograde direction.'],
        temperature_high: 25,
        temperature_low: -170,
        planet_id: mars.id
        origin_of_name: 'Named after the Greek god of fear, and twin brother of Deimos, Mars\'s other moon. ',
        first_discovery: 1877,
        discovered_by: 'Asaph Hall, an American astronomer.  He discovered it by using a telescope to observe Mars.  He noticed that Mars had two moons, and named them Phobos and Deimos after the Greek gods of fear and terror.',
    )

    deimos = Moon.create!(
        name: "Deimos",
        diameter_in_mi: 6.2, #diameter in miles
        distance_from_planet: 14577.37, #distance from planet in miles
        orbital_period: 1.262, #days
        rotation_period: 30.3,  #in hours
        orbital_velocity_in_km_s: 1.351, #km/s
        facts: ['Deimos is the smaller of Mars\' two moons.', 'Unlike Phobos, Mars\' other moon Deimos orbits a Mars in a prograde direction.'],
        temperature_high: 25,
        temperature_low: -170,
        planet_id: mars.id
        origin_of_name: 'Named after the Greek god of dread, and twin brother of Phobos, Mars\'s other moon. Both are the mythological sons of Ares, the Greek god of war, and Greek counterpart for the Roman god of war, Mars.',
        first_discovery: 1877,
        discovered_by: 'Asaph Hall, an American astronomer.  He discovered it by using a telescope to observe Mars.  He noticed that Mars had two moons, and named them Phobos and Deimos after the Greek gods of fear and terror.',
    )

    puts "Creating Venus..."
    venus = Planet.create!(
        name: "Venus",
        num_of_moons: 0,
        diameter_in_mi: 7521,
        distance_from_sun: 67.24,
        planetary_year: 224.7, #days
        rotation_period: 243,  #in hours
        orbital_velocity_in_km_s: 35.02, #km/s
        solid: 'True',
        facts: ['Venus is the second planet from the Sun.', 'Venus is the second brightest natural object in the night sky after the Moon.', 'Venus is the hottest planet in the Solar System, with surface temperatures hot enough to melt lead.'],
        temperature_high: 864,
        temperature_low: 462,
        origin_of_name: 'Named after the Roman goddess of love and beauty',
        first_discovery: 1610,
        discovered_by: 'Galileo Galilei was the first person to observe Venus with a telescope.',
        star_id: the_sun.id
    )

    puts "Creating Mercury..."
    mercury = Planet.create!(
        name: "Mercury",
        num_of_moons: 0,
        diameter_in_mi: 3031.9,
        distance_from_sun: 35.98,
        planetary_year: 88, #days
        rotation_period: 1407.6,  #in hours
        orbital_velocity_in_km_s: 47.36, #km/s
        solid: 'True',
        facts: ['Mercury is the smallest and innermost planet in the Solar System.', 'Mercury is the fastest planet, zipping around the Sun every 88 Earth days.', 'Mercury is the only planet in our Solar System not to be named after a Greek or Roman deity.'],
        temperature_high: 800,
        temperature_low: -290,
        origin_of_name: 'Named after the Roman god of commerce and messages, Mercury is the messenger of the gods.',
        first_discovery: 1610,

    )


    puts "Creating Jupiter..."
    jupiter = Planet.create!(
        name: "Jupiter",
        num_of_moons: 92,
        diameter_in_mi: 86881,
        distance_from_sun: 460.35,
        planetary_year: 4332.71, #days
        rotation_period: 9.93,  #in hours
        orbital_velocity_in_km_s: 13.06, #km/s
        solid: 'False',
        facts: ['Jupiter is the biggest planet in our Solar System, and the first of the gas giants.', 'Jupiter is known for having a Great Red Spot, a high pressure region in the atmosphere, producing winds at speeds up to 268 mph and is the largest anticyclonic storm in the solar system'],
        temperature_high: 2420, #atmospheric temperatures F
        temperature_low: -166,
        star_id: the_sun.id
        origin_of_name: 'Named after the Roman god of the sky and thunder, Jupiter is the king of the gods.',
        first_discovery: 1610,
        discovered_by: 'While Jupiter has been known since ancient times. Galileo Galilei was the first person to make detailed observations of Jupiter with a telescope.',
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
        origin_of_name: 'Named after the Greek goddess of the dawn',
        first_discovery: 1610,
        discovered_by: 'Galileo Galilei',
    )

    puts "Creating Jupiter's moons..."
    europa = Moon.create!(
        name: "Europa",
        diameter_in_mi: 1939.7, #diameter in miles
        distance_from_planet: 417000, #distance from planets cloud tops in miles
        orbital_period: 3.551, #days
        rotation_period: 85.2,  #in hours
        orbital_velocity_in_km_s: 13.06, #km/s
        facts: ['Europa is the smallest of the four Galilean moons of Jupiter.', 'Europa is the sixth-closest moon to Jupiter and the sixth-largest moon in the Solar System. About 90% the size of Earths moon.', 'Europas surface is composed of i.'],
        planet_id: jupiter.id,
        temperature_high: -260,
        temperature_low: -370,
        origin_of_name: 'Named after the Greek goddess of the dawn',
        first_discovery: 1610,
        discovered_by: 'Galileo Galilei',
    )

    puts "Creating Jupiter's moons..."
    ganymede = Moon.create!(
        name: "Ganymede",
        diameter_in_mi: 3273.5, #diameter in miles
        distance_from_planet: 665000, #distance from planets cloud tops in miles
        orbital_period: 7.155, #days
        rotation_period: 171.8,  #in hours
        orbital_velocity_in_km_s: 13.06, #km/s
        facts: ['Ganymede is the largest moon in the Solar System and the largest body in the Solar System that is not a planet. It\'s larger than the planet Mercury', 'Ganymede is the only moon in the Solar System known to have a magnetic field.', 'Ganymede is thought to have a subsurface saltwater ocean. The ocean is thought to have more water than all the water on the Earth\'s surface.'],
        planet_id: jupiter.id,
        temperature_high: -171,
        temperature_low: -297,
        origin_of_name: 'Named after the Greek god of the winds',
        first_discovery: 1610,
        discovered_by: 'Galileo Galilei',
    )

    puts "Creating Jupiter's moons..."
    callisto = Moon.create!(
        name: "Callisto",
        diameter_in_mi: 2995.4, #diameter in miles
        distance_from_planet: 1168177.84, #distance from planets cloud tops in miles
        orbital_period: 16.689, #days
        rotation_period: 400.8,  #in hours
        orbital_velocity_in_km_s: 13.06, #km/s
        facts: ['Callisto is the third-largest moon in the Solar System after Ganymede and Saturns moon Titan.', 'Callisto is 90% of the size of the planet Mercury, but only a third of its mass', 'Callisto is the oldest and most heavily cratered object in the Solar System.'],
        planet_id: jupiter.id,
        temperature_high: -162.67,
        temperature_low: -315.67,
        origin_of_name: 'Named after the Greek goddess of beauty',
        first_discovery: 1610,
        discovered_by: 'Galileo Galilei',
    )
    puts 'Creating Jupiters moons...'
    amalthea = Moon.create!(
        name: "Amalthea",
        diameter_in_mi: 103.77, #diameter in miles
        distance_from_planet: 181000, #distance from planets cloud tops in miles
        orbital_period: 0.498, #days
        rotation_period: 24 * .498,  #in hours
        orbital_velocity_in_km_s: 26.47, #km/s
        facts: ['Amalthea is extremely irregular, having dimensions of about 270x165x150 kilometers in diameter.', 'The first Jovian moon discovered since Galileo\'s discovery in 1892.', 'Amalthea rotates synchronously with its long, blunt axis pointed towards Jupiter. '],
        planet_id: jupiter.id,
        temperature_high: -180.67,
        temperature_low: -315.67,
        origin_of_name: 'The name Amalthea is primarily a female name of Greek origin that means To Soothe, Soften. From the Greek "Malthasso" meaning "to soothe, soften." In Greek mythology, Amalthea is a goat who nurses Zeus as a baby.',
        first_discovery: 1892,
        discovered_by: 'Edward Emerson Barnard',
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
        facts: ['While all of the outer solar system gas giants are known to have rings, Saturn is famous for its rings, which are made up of countless particles of ice and rock, ranging in size from tiny grains to giant boulders. The rings are thought to be relatively young, perhaps only a few hundred million years old, and they are constantly changing and evolving.', 'Saturn is the second-largest planet in our solar system, after Jupiter. It is a gas giant, which means it is mostly composed of hydrogen and helium gas.', 'Saturn contains three layers of clouds. The upper layers of ammonia ice have temperatures ranging from minus 280 F (minus 173 C) to minus 170 F (113 C). The next layer contains water ice, with temperatures from minus 127 F (minus 88 C) to 26 F (minus 3 C). Temperatures in the lower layers climb as high as 134 F (57 C).'],
        temperature_high: 21000, #core temperatures F
        temperature_low: -218,
        origin_of_name: 'Named after the Roman god of agriculture and wealth',
        first_discovery: 1610,
        discovered_by: 'Though the oldest written record of Saturn is dated back to 700 BCE and attributed to the Assyrians, Galileo Galilei is given credit as the first person to observe Saturn through a telescope in 1610.  The Assyrians described the ringed planet as a sparkle in the night and named it "Star of Ninib."  In 400 BCE, Ancient Greek astronomers named the planet Kronos, after their god of agriculture, the Romans would later chang the name to Saturn.',
        star_id: the_sun.id
    )

    puts "Creating Saturn's moons..."
    titan = Moon.create!(
        name: "Titan",
        diameter_in_mi: 3199.7, #diameter in miles
        distance_from_planet: 759000, 
        orbital_period: 15.945, #days
        rotation_period: 382.8,  #in hours
        orbital_velocity_in_km_s: 5.57, #km/s
        facts: ['Titan\'s atmosphere is mostly nitrogen (about 95 percent) and methane (about 5 percent), with small amounts of other carbon-rich compounds. High in Titan\'s atmosphere, methane and nitrogen molecules are split apart by the Sun\'s ultraviolet light and by high-energy particles accelerated in Saturn\'s magnetic field.', 'The pieces of these molecules recombine to form a variety of organic chemicals (substances that contain carbon and hydrogen), and often include nitrogen, oxygen and other elements important to life on Earth. Some of the compounds produced by that splitting and recycling of methane and nitrogen create a kind of smog—a thick, orange-colored haze that makes the moon\'s surface difficult to view from space.', 'The Cassini spacecraft’s numerous gravity measurements of Titan revealed that the moon is hiding an underground ocean of liquid water (likely mixed with salts and ammonia).'],
        planet_id: saturn.id,
        temperature_high: -292,
        temperature_low: -299,
        origin_of_name: 'Referring to the children of Uranus and Gaea in ancient Greek mythology, Titans were being of unfathomable power responsible for shaping the world.',
        first_discovery: 1655,
        discovered_by: 'Christiaan Huygens',
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
        facts: ['Uranus is the coldest planet in our solar system.', 'It is the only planet whose axis of rotation is tilted sideways, so that it rotates on its side.', 'It\'s unique tilt causes the most extreme seasons in the solar system. For nearly a quarter of each Uranian year, the Sun shines directly over each pole, plunging the other half of the planet into a 21-year-long, dark winter.', 'Uranus is also one of just two planets that rotate in the opposite direction than most of the planets (Venus is the other one), from east to west.', 'Uranus is one of two ice giants in the outer solar system (the other is Neptune). Most (80% or more) of the planet\'s mass is made up of a hot dense fluid of "icy" materials water, methane, and ammonia above a small rocky core. Near the core, it heats up to 9,000 degrees Fahrenheit (4,982 degrees Celsius).'],
        temperature_high: 9000, #atmospheric temperatures F
        temperature_low: -371,
        star_id: the_sun.id
        origin_of_name: 'Named after the Greek sky deity Uranus, great grandfather of Zeus.',
        first_discovery: 1781,
        discovered_by: 'William Herschel',
    )

    puts "Creating Uranus' moons..."
    miranda = Moon.create!(
        name: "Miranda",
        diameter_in_mi: 310.9, #diameter in miles
        distance_from_planet: 129000, #distance from planets cloud tops in miles
        orbital_period: 1.413, #days
        rotation_period: 1.413 * 24,  #in hours
        orbital_velocity_in_km_s: 23.5, #km/s
        facts: ['Miranda looks like it was pieced together from parts that didn\'t quite merge properly.', 'The last moon of Uranus to be discovered.', 'The smallest and innermost of Uranus\' five round moons.'],
        planet_id: uranus.id,
        temperature_high: -371,
        temperature_low: -371,
        origin_of_name: 'Miranda is the name of a character in Shakespeare\'s play The Tempest.',
        first_discovery: 1948,
        discovered_by: 'Gerard Kuiper',
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
        temperature_low: -373,
        star_id: the_sun.id,
        origin_of_name: 'Named after the Roman god of the sea.',
        first_discovery: 1846,
        discovered_by: 'Johann Galle',
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
        facts: ['Pluto was once considered the the smallest planet','Some bad people got together and reclassified it as a plantoid.', 'In my heart it will always be a planet, even though it is now considered a dwarf planet.'],
        temperature_high: -342, #atmospheric temperatures F
        temperature_low: -382,
        star_id: the_sun.id,
        origin_of_name: 'Named after the Roman god of the underworld.',
        first_discovery: 1930,
        discovered_by: 'Clyde Tombaugh',
    )
    puts "Done!"
end