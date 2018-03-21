class Crew < ApplicationRecord
  has_many :crew_positions
  has_many :movies, through: 'crew_positions'

end
