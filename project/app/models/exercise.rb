class Exercise < ApplicationRecord
  has_one :participant
  has_many :skillsets
  has_and_belongs_to_many :workshops, through: 'schedules'
  has_many :skills, through: :skillsets

end
