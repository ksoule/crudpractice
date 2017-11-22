class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.integer :skillset_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
