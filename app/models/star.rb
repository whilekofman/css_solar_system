# == Schema Information
#
# Table name: stars
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  facts       :text             default([]), not null, is an Array
#  diameter    :float            not null
#  temperature :float            not null
#  mass        :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Star < ApplicationRecord
    validates :name, :facts, :diameter, :temperature, :mass, presence: true
    validates :mass, numericality: { greater_than: 0 }

    has_many :planets, dependent: :destroy    
end  