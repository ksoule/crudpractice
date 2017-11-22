class Skillset < ApplicationRecord
  has_many :works
  has_and_belongs_to_many :exercises, through: "works"

end
