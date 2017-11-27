class CreateSkillsets < ActiveRecord::Migration[5.1]
  def change
    create_table :skillsets do |t|
      t.integer :skill_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
