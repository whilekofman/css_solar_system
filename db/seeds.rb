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
    Star.create!(
        name: "Sun",
        mass: 1.989e30,
        facts: ["The Sun is over 4.5 billion years old.", "Many ancient civilisations thought The Sun was a God.", "Sometimes spots on The Sun erupt and mess with our mobile phone signals."],
        diameter: 865370,
        temperature: 5778,
    )

    puts "Done!"
  end