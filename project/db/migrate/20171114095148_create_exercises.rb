class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.string :source
      t.string :notes
      t.integer :participant_id

      t.timestamps

    end
  end
end
