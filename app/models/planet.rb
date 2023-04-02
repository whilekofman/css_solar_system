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
#  facts                    :text             default([]), not null, array: true
#  star_id                  :bigint           not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  temperature_high         :float
#  temperature_low          :float
#  origin_of_name           :string
#  first_discovery          :integer
#  discovered_by            :text
#

class Planet < ApplicationRecord
    belongs_to :star
  
    has_many :moons, dependent: :destroy
  
    validates :name, :num_of_moons, :diameter_in_mi, :distance_from_sun, :planetary_year,
              :rotation_period, :orbital_velocity_in_km_s, :solid, :star_id, presence: true
  
    validates :num_of_moons, numericality: { greater_than_or_equal_to: 0 }
    validates :diameter_in_mi, :distance_from_sun, :planetary_year, :rotation_period,
              :orbital_velocity_in_km_s, numericality: { greater_than: 0 }
  
    validates :solid, inclusion: { in: [true, false] }
  end  