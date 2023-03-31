# == Schema Information
#
# Table name: planets
#
#  id                       :bigint           not null, primary key
#  name                     :string           not null
#  num_of_moons             :integer          not null
#  diameter_in_mi           :float            not null
#  distance_from_sun        :float            not null
#  planetary_year           :float            not null
#  rotation_period          :float            not null
#  orbital_velocity_in_km_s :float            not null
#  solid                    :boolean          not null
#  facts                    :text             default([]), not null, is an Array
#  star_id                  :bigint           not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  temperature_high         :float
#  temperature_low          :float
#
class Planet < ApplicationRecord
    belongs_to :star
  
    has_many :moons, dependent: :destroy
    
    # validates :name, :num_of_moons, :diameter, :distance_from_sun, :velocity, :rotational_velocity,
    #           :eccentricity, :planetary_year, :rotation_period, :mean_orbital_velocity,
    #           :temperature, :star_id, presence: true
    
    # validates :mass, :diameter, :distance_from_sun, :velocity, :rotational_velocity,
    # :eccentricity, :planetary_year, :rotation_period, :mean_orbital_velocity, numericality: { greater_than: 0 }
    # validates :num_of_moons, numericality: { greater_than_or_equal_to: 0 }
    
    validates :solid, inclusion: { in: [true, false] }
end  