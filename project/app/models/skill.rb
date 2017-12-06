class Skill < ApplicationRecord
  has_many :skillsets
  has_many :parent_skills, class_name: 'skill'
end
