class Movie < ApplicationRecord
  has_many :roles
  has_many :crew_positions
  has many :crew, through: 'crew_positions'
  has_many :actors, through: 'roles'
  has_and_belongs_to_many :genres
  has_many :reviews

end

