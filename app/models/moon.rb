# == Schema Information
#
# Table name: moons
#
#  id                       :bigint           not null, primary key
#  name                     :string           not null
#  diameter_in_mi           :float            not null
#  distance_from_planet     :float            not null
#  facts                    :text             default([]), not null, is an Array
#  orbital_period           :float            not null
#  rotation_period          :float            not null
#  orbital_velocity_in_km_s :float            not null
#  planet_id                :bigint           not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  temperature_high         :float
#  temperature_low          :float
#
class Moon < ApplicationRecord
    belongs_to :planet
      
    validates :name, :diameter_in_mi, :distance_from_planet, :facts, :orbital_period, 
              :rotation_period, :orbital_velocity_in_km_s, :temperature_high, :temperature_low, :planet_id, presence: true

end
