class Exercise < ApplicationRecord
  has_one :participant
  has_many :works
  has_and_belongs_to_many :skillsets, through: "works"
  has_and_belongs_to_many :workshops, through: "schedules"

end
