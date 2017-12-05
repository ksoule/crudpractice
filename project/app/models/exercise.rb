class Exercise < ApplicationRecord
  has_one :participant
  has_many :skillsets
  has_and_belongs_to_many :workshops, through: 'schedules'
end

def add_skill_set(skills)
  skills.each do |skill|
    Skillset.create!(id, skill.id)
  end

  def exercise_skills
    Skillset.all.select{|skill| skill.exercise_id == self.id}
  end
end
