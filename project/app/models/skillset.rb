class Skillset < ApplicationRecord
  belongs_to :exercise
  has_many :skills

end
