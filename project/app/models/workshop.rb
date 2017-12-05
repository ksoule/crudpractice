class Workshop < ApplicationRecord
  has_many :schedules
  has_and_belongs_to_many :exercises, through: 'schedules'
end
