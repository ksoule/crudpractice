class CreateSchedule < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :exercise_id
      t.integer :workshop_id

      t.timestamps
    end
  end
end
