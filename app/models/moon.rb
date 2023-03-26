# == Schema Information
#
# Table name: moons
#
#  id                    :bigint           not null, primary key
#  name                  :string           not null
#  diameter              :float            not null
#  distance_from_planet  :float            not null
#  facts                 :text             default([]), not null, is an Array
#  velocity              :float            not null
#  rotational_velocity   :float            not null
#  eccentricity          :float            not null
#  orbital_period        :float            not null
#  rotation_period       :float            not null
#  mean_orbital_velocity :float            not null
#  temperature           :float            not null
#  planet_id             :bigint           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
class Moon < ApplicationRecord
    belongs_to :planet
      
    validates :name, :diameter, :distance_from_planet, :facts, :velocity, :rotational_velocity,
              :eccentricity, :orbital_period, :rotation_period, :mean_orbital_velocity,
              :temperature, :planet_id, presence: true
    
    validates :mass, :diameter, :distance_from_sun, :velocity, :rotational_velocity,
    :eccentricity, :planetary_year, :rotation_period, :mean_orbital_velocity, numericality: { greater_than: 0 } 
end